import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            TextField(),
            const SizedBox(
              height: 10,
            ),
            TextField(),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed('register');
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Login"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
