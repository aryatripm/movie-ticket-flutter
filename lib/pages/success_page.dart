import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/bloc/newticket_bloc.dart';
import 'package:movie_ticket/entity/ticket.dart';
import 'package:movie_ticket/services/ticket_services.dart';
import 'package:movie_ticket/services/user_services.dart';

class SuccessPage extends StatelessWidget {
  final String? type;
  SuccessPage({Key? key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(type == 'topup'
                      ? "assets/card.png"
                      : "assets/ticket.png"),
                ),
              ),
            ),
            Text(
              type == 'topup' ? "Emmm Yummy!" : "Happy Watching!",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              type == 'topup'
                  ? "You have successfully top up the wallet"
                  : "You have successfully bought the ticket",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => context.goNamed('home'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text("Back to home"),
            ),
          ],
        ),
      ),
    );
  }
}
