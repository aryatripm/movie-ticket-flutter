import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket/services/ticket_services.dart';

class TicketDetailPage extends StatelessWidget {
  final String ticketId;
  TicketDetailPage({Key? key, required this.ticketId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<DocumentSnapshot>(
        future: TicketService().getTicket(ticketId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!.data().toString());
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
