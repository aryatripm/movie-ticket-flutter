import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_ticket/entity/ticket.dart';
import 'package:movie_ticket/services/user_services.dart';

class TicketService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference tickets =
      FirebaseFirestore.instance.collection('tickets');

  Future<QuerySnapshot> getAllTickets(String user_id) {
    return tickets
        .where('user_id', isEqualTo: user_id)
        .orderBy("date", descending: true)
        .get();
  }

  Future<DocumentSnapshot<Object?>> getTicket(String id) {
    // return tickets.where('documentID', isEqualTo: id).get();
    return tickets.doc(id).get();
  }

  Future<DocumentReference<Object?>> createTicket(Ticket newTicket) {
    return tickets.add({
      'movie_id': newTicket.movie_id,
      'user_id': newTicket.user_id,
      'date': newTicket.date,
      'location': newTicket.location,
      'seats': newTicket.seats,
      'price_per_seat': 20000
    });
  }
}
