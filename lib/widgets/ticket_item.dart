import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
              return Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://image.tmdb.org/t/p/w300${snapshot.data!.poster_path}"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width - 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat.yMMMd().format(ticket.date!.toDate()),
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          snapshot.data!.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(ticket.location!),
                      ],
                    ),
                  )
                ],
              );
            } else {
              return Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.grey,
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
