import 'package:cloud_firestore/cloud_firestore.dart';

class Ticket {
  String? id;
  String? user_id;
  String? movie_id;
  Timestamp? date;
  String? location;
  int? price_per_seat;
  List<String>? seats;

  Ticket({
    this.id,
    this.user_id,
    this.movie_id,
    this.date,
    this.location,
    this.price_per_seat,
    this.seats,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) => Ticket(
        id: json['id'],
        user_id: json['user_id'],
        movie_id: json['movie_id'],
        date: json['date'],
        location: json['location'],
        price_per_seat: json['price_per_seat'],
        seats: [...json['seats']],
      );
}
