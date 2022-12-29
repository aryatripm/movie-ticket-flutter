import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:movie_ticket/bloc/newticket_bloc.dart';
import 'package:movie_ticket/widgets/seat_item.dart';

class SeatPage extends StatefulWidget {
  SeatPage();

  @override
  _SeatPageState createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  late List<String> selectedSeats;
  late int totalPrice;

  @override
  void initState() {
    super.initState();
    selectedSeats = [];
    totalPrice = 0;
  }

  @override
  Widget build(BuildContext context) {
    context.read<NewticketBloc>().add(NewticketEvent.editSeats(selectedSeats));
    return Scaffold(
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
            // width: 200,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/screen.png'),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            child: generateSeats(context),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 30,
                    width: 20,
                  ),
                  const SizedBox(height: 5),
                  const Text("Available"),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 30,
                    width: 20,
                  ),
                  const SizedBox(height: 5),
                  const Text("Taken"),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 30,
                    width: 20,
                  ),
                  const SizedBox(height: 5),
                  const Text("Selected"),
                ],
              ),
            ],
          ),
          AnimatedSlide(
            duration: const Duration(milliseconds: 500),
            offset: selectedSeats.isNotEmpty
                ? const Offset(0, 0)
                : const Offset(0, 5),
            curve: Curves.easeInOut,
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color(0xFF373838),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Selected Seats",
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: selectedSeats.map((e) => Text("$e,")).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        NumberFormat.currency(
                          locale: 'id',
                          decimalDigits: 0,
                        ).format((selectedSeats.length * 20000)),
                        style: const TextStyle(fontSize: 20),
                      ),
                      ElevatedButton(
                        onPressed: () => context.pushNamed('confirm'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 10,
                          ),
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text(
                          "Confirm",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () => context.pushNamed('confirm'),
      //   label: BlocBuilder<NewticketBloc, NewticketState>(
      //     builder: (context, state) {
      //       return Text(state.when(
      //         initial: () => "Click seat first!",
      //         created: (ticket) =>
      //             "Buy Ticket Rp. ${((ticket.seats?.length ?? 0) * 20000).toString()}",
      //       ));
      //     },
      //   ),
      // ),
    );
  }

  Column generateSeats(BuildContext context) {
    List<Widget> seats = [];
    List<String> row = ['A', 'B', 'C', 'D', 'E'];
    int column = 9;
    for (var i = 0; i < row.length; i++) {
      seats.add(
        Container(
          margin: EdgeInsets.only(bottom: (i != row.length - 1 ? 10 : 0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              column,
              (index) => Seat(
                marginRight: (index == 1 || index == 6 ? 30 : 10),
                isSelected: selectedSeats.contains("${row[i]}$index"),
                isEnabled: false,
                onTap: () {
                  setState(() {
                    if (selectedSeats.contains("${row[i]}$index")) {
                      selectedSeats.remove("${row[i]}$index");
                    } else {
                      selectedSeats.add("${row[i]}$index");
                    }
                  });
                  log(selectedSeats.toString());
                },
              ),
            ),
          ),
        ),
      );
    }
    return Column(
      children: seats,
    );
  }
}
