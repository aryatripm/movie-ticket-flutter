import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _email,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _password,
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {
                context.goNamed('register');
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _email.text,
            password: _password.text,
          );
          context.goNamed('home');
        },
        label: const Text("Login"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
