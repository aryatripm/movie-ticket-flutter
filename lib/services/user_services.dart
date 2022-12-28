import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_ticket/entity/user.dart';

class UserService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference history =
      FirebaseFirestore.instance.collection('history_topup');

  Stream<DocumentSnapshot<Object?>> getUser(String id) {
    // return tickets.where('documentID', isEqualTo: id).get();
    return users.doc(id).snapshots();
  }

  Future<DocumentSnapshot<Object?>> getOneTimeUser(String id) {
    return users.doc(id).get();
  }

  Stream<QuerySnapshot> getAllHistoryTopUp(String user_id) {
    return history
        .where('user_id', isEqualTo: user_id)
        .orderBy('date', descending: true)
        .snapshots();
  }

  Future<void> createUser(User newUser) {
    return users.doc(newUser.id).set({
      'name': newUser.name,
      'email': newUser.email,
      'balance': newUser.balance,
      'history_topup': newUser.history_topup,
    });
  }

  Future<void> updateBalanceUser(String id, int amount) {
    history.add({
      'user_id': id,
      'date': Timestamp.now(),
      'amount': amount,
    });
    return users.doc(id).get().then((value) {
      final data = value.data() as Map<String, dynamic>;
      users.doc(id).update({
        'balance': data['balance'] + amount,
      });
    });
  }
}
