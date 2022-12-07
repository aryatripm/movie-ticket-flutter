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
          return ListView(
            children: snapshot.data!.docs.map((e) {
              Ticket ticket = Ticket.fromJson(e.data() as Map<String, dynamic>);
              ticket.id = e.id;
              return TicketItem(
                ticket: ticket,
                onTap: () {
                  context.goNamed(
                    'ticket_detail',
                    params: {"id": ticket.id ?? '0'},
                  );
                },
              );
            }).toList(),
          );
        } else {
          return const Text('There is no recent tickets');
        }
      },
    );
  }
}
