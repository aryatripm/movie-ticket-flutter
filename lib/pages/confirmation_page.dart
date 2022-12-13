import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:movie_ticket/bloc/newticket_bloc.dart';
import 'package:movie_ticket/bloc/selectedmovie_bloc.dart';
import 'package:movie_ticket/entity/ticket.dart';
import 'package:movie_ticket/entity/user.dart' as MyUser;
import 'package:movie_ticket/services/ticket_services.dart';
import 'package:movie_ticket/services/user_services.dart';

class ConfirmationPage extends StatelessWidget {
  ConfirmationPage({Key? key}) : super(key: key);
  late Ticket createdTicket;

  @override
  Widget build(BuildContext context) {
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
          BlocBuilder<SelectedmovieBloc, SelectedmovieState>(
            builder: (context, state) {
              return state.when(
                selected: (selectedMovie) {
                  return Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            opacity: 0.3,
                            image: NetworkImage(
                              "https://image.tmdb.org/t/p/w500${selectedMovie.poster_path}",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                selectedMovie.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 20),
                              ),
                              Row(
                                children: selectedMovie.genres
                                    .map((e) => Text(
                                          "${e.name} | ",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(fontSize: 17),
                                        ))
                                    .toList(),
                              ),
                              Text(
                                "${selectedMovie.runtime} Minutes",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                unselected: () => const Text('-'),
              );
            },
          ),
          BlocBuilder<NewticketBloc, NewticketState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Text('Someting went wrong!'),
                created: (ticket) {
                  createdTicket = ticket;
                  return Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Date",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          DateFormat.yMMMMEEEEd().format(
                            ticket.date!.toDate(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Time",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          DateFormat.jm().format(
                            ticket.date!.toDate(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Cinema",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(ticket.location ?? 'loc'),
                        const SizedBox(height: 10),
                        const Text(
                          "Seats",
                          style: TextStyle(fontSize: 20),
                        ),
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: Color(0xFF383737),
        ),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Balance",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            StreamBuilder(
              stream:
                  UserService().getUser(FirebaseAuth.instance.currentUser!.uid),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  MyUser.User user = MyUser.User.fromJson(
                      snapshot.data!.data() as Map<String, dynamic>);
                  return Text("IDR ${user.balance}");
                } else {
                  return const Text("Loading...");
                }
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    BlocBuilder<NewticketBloc, NewticketState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => Text("IDR 0"),
                          created: (ticket) {
                            return Text("IDR ${ticket.seats!.length * 20000}");
                          },
                        );
                      },
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    TicketService()
                        .createTicket(createdTicket)
                        .then((value) => context.goNamed('home'));
                  },
                  child: const Text("Pay"),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     TicketService().createTicket(createdTicket);
      //     context.goNamed('home');
      //   },
      //   label: const Text('Confirm'),
      // ),
    );
  }
}
