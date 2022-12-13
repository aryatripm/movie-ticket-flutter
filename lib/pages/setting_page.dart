import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        children: [
          GestureDetector(
            onTap: () => null,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: const Text("About"),
            ),
          ),
          GestureDetector(
            onTap: () => FirebaseAuth.instance
                .signOut()
                .then((value) => context.goNamed('login')),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: const Text("Logout"),
            ),
          ),
        ],
      ),
    );
  }
}
