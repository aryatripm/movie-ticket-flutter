import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:movie_ticket/entity/history_topup.dart';
import 'package:movie_ticket/entity/user.dart' as MyUser;
import 'package:movie_ticket/services/user_services.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          StreamBuilder(
            stream:
                UserService().getUser(FirebaseAuth.instance.currentUser!.uid),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                MyUser.User user = MyUser.User.fromJson(
                    snapshot.data!.data() as Map<String, dynamic>);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://avatars.dicebear.com/api/initials/${user.name}.png"),
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.name ?? '-',
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              user.email ?? '-',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            spreadRadius: 0,
                            offset: Offset(0, 5),
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Balance",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                // "IDR ${user.balance}",
                                NumberFormat.currency(
                                  locale: 'id',
                                  symbol: 'IDR ',
                                  decimalDigits: 0,
                                ).format(user.balance),
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () => context.goNamed("topup"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white),
                            child: const Text("Top Up"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "History",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    StreamBuilder(
                      stream: UserService().getAllHistoryTopUp(
                          FirebaseAuth.instance.currentUser!.uid),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return snapshot.data!.docs.isNotEmpty
                              ? Column(
                                  children: snapshot.data!.docs.map((e) {
                                    HistoryTopup h = HistoryTopup.fromJson(
                                        e.data() as Map<String, dynamic>);
                                    return Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 20,
                                      ),
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF373838),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(DateFormat.yMMMd()
                                              .format(h.date!.toDate())),
                                          Text(
                                            // "IDR ${h.amount}",
                                            NumberFormat.currency(
                                              locale: 'id',
                                              symbol: "",
                                              decimalDigits: 0,
                                            ).format(h.amount),
                                            style:
                                                const TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                )
                              : const Center(
                                  child: Text(
                                      "Oops!, There is no recent transaction"),
                                );
                        } else {
                          return const Text("No History Found");
                        }
                      },
                    ),
                  ],
                );
              } else {
                return Row(
                  children: const [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          "https://avatars.dicebear.com/api/initials/0.png"),
                      backgroundColor: Colors.white,
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
