import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket/entity/ticket.dart';
import 'package:movie_ticket/services/movie_service.dart';
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
            Ticket ticket =
                Ticket.fromJson(snapshot.data!.data() as Map<String, dynamic>);
            return ListView(
              children: [
                FutureBuilder(
                  future: MovieService()
                      .getMovie(int.parse(ticket.movie_id ?? "0")),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data!.title);
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
                Text(ticket.date.toString()),
                Text(ticket.location ?? "-"),
                Text(ticket.seats.toString()),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
