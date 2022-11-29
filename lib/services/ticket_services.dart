import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_ticket/entity/ticket.dart';

class TicketService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference tickets =
      FirebaseFirestore.instance.collection('tickets');

  Future<QuerySnapshot> getAllTickets(String user_id) {
    return tickets.where('user_id', isEqualTo: user_id).get();
  }

  Future<DocumentSnapshot<Object?>> getTicket(String id) {
    // return tickets.where('documentID', isEqualTo: id).get();
    return tickets.doc(id).get();
  }

  void createTicket(Ticket newTicket) {
    tickets.add({
      'movie_id': newTicket.movie_id,
      'user_id': newTicket.user_id,
      'date': newTicket.date,
      'location': newTicket.location,
      'seats': newTicket.seats,
      'price_per_seat': 20000
    });
  }
}
