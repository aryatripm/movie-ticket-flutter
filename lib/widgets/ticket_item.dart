import 'package:flutter/material.dart';
import 'package:movie_ticket/entity/ticket.dart';

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
        child: Text("${ticket.movie_id.toString()}-${ticket.location}"),
      ),
    );
  }
}
