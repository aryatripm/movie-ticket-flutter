import 'package:cloud_firestore/cloud_firestore.dart';

class TicketService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference tickets =
      FirebaseFirestore.instance.collection('tickets');

  Future<QuerySnapshot> getAllTickets() {
    return tickets.get();
  }

  void createTicket() {
    tickets.add({
      'movie_id': '',
      'user_id': '',
      'date': Timestamp.now(),
      'seats': ['B1', 'B2'],
      'price_per_seat': 20000
    });
  }
}
