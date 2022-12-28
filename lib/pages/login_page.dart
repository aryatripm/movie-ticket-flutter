import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/services/auth_services.dart';
import 'package:movie_ticket/services/user_services.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // const SizedBox(height: 50),
          Container(
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/hero.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
            decoration: const BoxDecoration(
              color: Color(0xFF383737),
              boxShadow: [
                BoxShadow(
                  color: Colors.black, //New
                  blurRadius: 10.0,
                  offset: Offset(0, 0),
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Glad to see you back!",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email address',
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email Address',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
                        context.goNamed('register');
                      },
                      child: const Text('Register'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        // AuthServices.signIn(_email.text, _password.text);
                        // showFlash(
                        //   duration: const Duration(seconds: 5),
                        //   context: context,
                        //   builder: (context, controller) {
                        //     return Flash.bar(
                        //       backgroundColor: const Color(0xFF383737),
                        //       position: FlashPosition.top,
                        //       borderRadius: const BorderRadius.vertical(
                        //         bottom: Radius.circular(10),
                        //       ),
                        //       boxShadows: const [
                        //         BoxShadow(
                        //           color: Colors.black, //New
                        //           blurRadius: 10.0,
                        //           offset: Offset(0, 0),
                        //         )
                        //       ],
                        //       barrierBlur: 1,
                        //       barrierColor: Colors.black.withOpacity(0.5),
                        //       controller: controller,
                        //       child: FlashBar(
                        //           showProgressIndicator: true,
                        //           padding: const EdgeInsets.all(20),
                        //           content: const Text("Logging in...",
                        //               style: TextStyle(fontSize: 20))),
                        //     );
                        //   },
                        // );
                        await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                          email: _email.text,
                          password: _password.text,
                        )
                            .then((value) {
                          UserService()
                              .getOneTimeUser(value.user?.uid ?? '0')
                              .then((value) => context.goNamed('home'))
                              .onError((error, stackTrace) =>
                                  FirebaseAuthException(code: '0'));
                        });
                      } on FirebaseAuthException catch (e) {
                        _showError(context, e);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    // icon: const Icon(Icons.login_rounded, size: 30),
                    child: const Text("Login", style: TextStyle(fontSize: 20)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showError(BuildContext context, FirebaseAuthException e) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 3),
      builder: (context, controller) {
        return Flash.bar(
          backgroundColor: const Color(0xFF383737),
          position: FlashPosition.top,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          behavior: FlashBehavior.floating,
          margin: const EdgeInsets.all(10),
          boxShadows: const [
            BoxShadow(
              color: Colors.black, //New
              blurRadius: 10.0,
              offset: Offset(0, 0),
            )
          ],
          controller: controller,
          child: FlashBar(
            icon: const Icon(Icons.info_outline_rounded),
            indicatorColor: Colors.red,
            title: const Text("Oops!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            content: Text(e.message ?? "An error occured"),
          ),
        );
      },
    );
  }
}
