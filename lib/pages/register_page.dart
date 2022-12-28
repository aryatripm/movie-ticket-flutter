import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/entity/user.dart' as MyUser;
import 'package:movie_ticket/services/user_services.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _repassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 0),
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
                  "Let's get started!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Create an account",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                    hintText: 'Enter your name',
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Full Name',
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                  height: 10,
                ),
                TextFormField(
                  controller: _repassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter again your password',
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: 'Re-enter password',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Already have an account? "),
                    TextButton(
                      onPressed: () {
                        context.goNamed('login');
                      },
                      child: const Text('Login'),
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
                        if (_password.text == _repassword.text) {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                email: _email.text,
                                password: _password.text,
                              )
                              .then(
                                // (value) => log(value.user?.uid ?? "-"),
                                (value) => UserService()
                                    .createUser(
                                      MyUser.User(
                                        id: value.user?.uid,
                                        name: _name.text,
                                        balance: 0,
                                        email: _email.text,
                                      ),
                                    )
                                    .then(
                                      (value) => context.goNamed('home'),
                                    ),
                              );
                        } else {
                          throw Exception();
                        }
                      } on FirebaseAuthException catch (e) {
                        _showError(context, e);
                      } on Exception catch (e) {
                        _showError(
                            context,
                            FirebaseAuthException(
                                code: "", message: "Password does not match!"));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    // icon: const Icon(Icons.login_rounded, size: 30),
                    child: const Text("Signup", style: TextStyle(fontSize: 20)),
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
