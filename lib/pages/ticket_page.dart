import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/entity/ticket.dart';
import 'package:movie_ticket/services/ticket_services.dart';
import 'package:movie_ticket/widgets/ticket_item.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future:
          TicketService().getAllTickets(FirebaseAuth.instance.currentUser!.uid),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return snapshot.data!.docs.isNotEmpty
              ? ListView(
                  children: snapshot.data!.docs.map((e) {
                    Ticket ticket =
                        Ticket.fromJson(e.data() as Map<String, dynamic>);
                    ticket.id = e.id;
                    return TicketItem(
                      ticket: ticket,
                      onTap: () {
                        context.pushNamed(
                          'ticket_detail',
                          params: {"id": ticket.id ?? '0'},
                        );
                      },
                    );
                  }).toList(),
                )
              : Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/alarm.png"),
                          ),
                        ),
                      ),
                      const Text(
                        "Oops!",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "You haven't order a ticket yet",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
