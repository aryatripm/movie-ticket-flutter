import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/services/user_services.dart';
import 'package:movie_ticket/widgets/price_item.dart';

class TopUpPage extends StatefulWidget {
  TopUpPage();

  @override
  _TopUpPageState createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  final TextEditingController _customAmount = TextEditingController();
  int selectedAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView(
        children: [
          Row(
            children: [
              TextButton.icon(
                label: const Text("Back"),
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  context.pop();
                },
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Choose an amount",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PriceItem(
                price: "50.000",
                isSelected: selectedAmount == 50000,
                onTap: () => setState(() {
                  selectedAmount = 50000;
                  _customAmount.text = "";
                }),
              ),
              PriceItem(
                price: "100.000",
                isSelected: selectedAmount == 100000,
                onTap: () => setState(() {
                  selectedAmount = 100000;
                  _customAmount.text = "";
                }),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PriceItem(
                price: "500.000",
                isSelected: selectedAmount == 500000,
                onTap: () => setState(() {
                  selectedAmount = 500000;
                  _customAmount.text = "";
                }),
              ),
              PriceItem(
                price: "1.000.000",
                isSelected: selectedAmount == 1000000,
                onTap: () => setState(() {
                  selectedAmount = 1000000;
                  _customAmount.text = "";
                }),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: _customAmount,
              keyboardType: TextInputType.number,
              onTap: () {
                setState(() {
                  selectedAmount = 0;
                });
              },
              onChanged: (value) =>
                  selectedAmount = int.parse(_customAmount.text),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  // borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                fillColor: Color(0xFF373838),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                hintText: '0',
                prefixText: "IDR ",
                suffixIcon: Icon(Icons.add),
                labelText: 'Type the Amount',
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: ElevatedButton(
          onPressed: () => UserService()
              .updateBalanceUser(
                  FirebaseAuth.instance.currentUser!.uid, selectedAmount)
              .then((value) =>
                  context.goNamed('success', queryParams: {'type': 'topup'})),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              // horizontal: 10,
              vertical: 15,
            ),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          child: const Text(
            "Confirm",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
