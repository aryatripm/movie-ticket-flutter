import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:movie_ticket/entity/ticket.dart';
import 'package:movie_ticket/services/movie_service.dart';
import 'package:movie_ticket/services/ticket_services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketDetailPage extends StatelessWidget {
  final String ticketId;
  TicketDetailPage({Key? key, required this.ticketId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<DocumentSnapshot>(
        future: TicketService().getTicket(ticketId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Ticket ticket =
                Ticket.fromJson(snapshot.data!.data() as Map<String, dynamic>);
            return ListView(
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
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      FutureBuilder(
                        future: MovieService()
                            .getMovie(int.parse(ticket.movie_id ?? "0")),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data!.title,
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: const TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            );
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: Color(0xFF373838),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
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
                            const SizedBox(height: 10),
                            const Text(
                              "Total Price",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text((ticket.price_per_seat! * ticket.seats!.length)
                                .toString()),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      QrImage(
                        data: ticketId,
                        foregroundColor: Colors.white,
                        size: 100,
                        errorCorrectionLevel: QrErrorCorrectLevel.M,
                        version: QrVersions.auto,
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Container(
              width: double.infinity,
              height: double.infinity,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
