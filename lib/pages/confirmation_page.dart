import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/bloc/newticket_bloc.dart';
import 'package:movie_ticket/bloc/selectedmovie_bloc.dart';
import 'package:movie_ticket/entity/ticket.dart';
import 'package:movie_ticket/services/ticket_services.dart';

class ConfirmationPage extends StatelessWidget {
  ConfirmationPage({Key? key}) : super(key: key);
  late Ticket createdTicket;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            BlocBuilder<SelectedmovieBloc, SelectedmovieState>(
              builder: (context, state) {
                return state.when(
                  selected: (selectedMovie) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 200,
                              child: Image.network(
                                "https://image.tmdb.org/t/p/w500${selectedMovie.poster_path ?? '-'}",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(selectedMovie.title),
                                Text(selectedMovie.genres[0].name),
                                Text(selectedMovie.vote_average.toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  unselected: () => const Text('-'),
                );
              },
            ),
            BlocBuilder<NewticketBloc, NewticketState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Text('init'),
                  created: (ticket) {
                    createdTicket = ticket;
                    return Container(
                      width: double.infinity,
                      height: 200,
                      child: ListView(
                        children: [
                          Text(ticket.id.toString()),
                          Text(ticket.movie_id.toString()),
                          Text(ticket.user_id.toString()),
                          Text(ticket.date!.toDate().toString()),
                          Text(ticket.location ?? 'loc'),
                          Text(ticket.seats.toString()),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          TicketService().createTicket(createdTicket);
          context.goNamed('home');
        },
        label: const Text('Confirm'),
      ),
    );
  }
}
