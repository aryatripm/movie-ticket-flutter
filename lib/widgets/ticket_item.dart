import 'package:flutter/material.dart';
import 'package:movie_ticket/entity/ticket.dart';
import 'package:movie_ticket/services/movie_service.dart';

class TicketItem extends StatelessWidget {
  final Ticket ticket;
  final Function onTap;
  TicketItem({Key? key, required this.ticket, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: FutureBuilder(
          future: MovieService().getMovie(int.parse(ticket.movie_id ?? "0")),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text("${snapshot.data!.title} - ${ticket.location}");
            } else {
              return const Text("Loading");
            }
          },
        ),
      ),
    );
  }
}
