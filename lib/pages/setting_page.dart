import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/widgets/setting_item.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: ListView(
        children: [
          SettingItem(
            icon: Icons.account_balance_outlined,
            title: "About",
            description: "Description of this app",
            onTap: () => log("about"),
          ),
          SettingItem(
            icon: Icons.security,
            title: "Privacy Policy",
            description: "Privacy Policies of this app",
            onTap: () => log("policy"),
          ),
          SettingItem(
            icon: Icons.star,
            title: "Rate App",
            description: "Tell others what you think",
            onTap: () => log("rate"),
          ),
          SettingItem(
            icon: Icons.logout,
            title: "Log out",
            description:
                "Are you sure? You'll have to login again once you're back.",
            onTap: () => FirebaseAuth.instance
                .signOut()
                .then((value) => context.goNamed('login')),
          ),
        ],
      ),
    );
  }
}
