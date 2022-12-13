import 'package:cloud_firestore/cloud_firestore.dart';

class HistoryTopup {
  String? user_id;
  Timestamp? date;
  int? amount;

  HistoryTopup({
    this.user_id,
    this.date,
    this.amount,
  });

  factory HistoryTopup.fromJson(Map<String, dynamic> json) => HistoryTopup(
        user_id: json['user_id'],
        date: json['date'],
        amount: json['amount'],
      );
}
