class User {
  String? id;
  String? name;
  String? email;
  int? balance;
  Map<String, dynamic>? history_topup;

  User({
    this.id,
    this.name,
    this.email,
    this.balance,
    this.history_topup,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        balance: json['balance'],
        history_topup: json['history_topup'],
      );
}
