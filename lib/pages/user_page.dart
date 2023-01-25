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
      // padding: const EdgeInsets.all(20),
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Row(
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
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 40),
                      decoration: BoxDecoration(
                        gradient: const RadialGradient(
                          center: Alignment.centerLeft,
                          focal: Alignment.centerRight,
                          focalRadius: 3.0,
                          // radius: 1.0,
                          colors: [
                            Colors.red,
                            Color(0xFFE50914),
                            Colors.redAccent,
                          ],
                        ),
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
                          ElevatedButton.icon(
                            icon: const Icon(Icons.add),
                            onPressed: () => context.goNamed("topup"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white),
                            label: const Text("Top Up"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Color(0xFF373838),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          const Divider(
                            thickness: 2.0,
                            indent: 100,
                            endIndent: 100,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "History",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          StreamBuilder(
                            stream: UserService().getAllHistoryTopUp(
                                FirebaseAuth.instance.currentUser!.uid),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return snapshot.data!.docs.isNotEmpty
                                    ? Column(
                                        children: snapshot.data!.docs.map((e) {
                                          HistoryTopup h =
                                              HistoryTopup.fromJson(e.data()
                                                  as Map<String, dynamic>);
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
                                            child: Row(
                                              children: [
                                                Icon(h.amount! < 0
                                                    ? Icons.bookmark
                                                    : Icons.add),
                                                const SizedBox(width: 20),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(DateFormat.yMMMd()
                                                        .format(
                                                            h.date!.toDate())),
                                                    Text(
                                                      // "IDR ${h.amount}",
                                                      NumberFormat.currency(
                                                        locale: 'id',
                                                        symbol: "",
                                                        decimalDigits: 0,
                                                      ).format(h.amount),
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: h.amount! < 0
                                                              ? Colors.red
                                                              : Colors.green),
                                                    ),
                                                  ],
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
                      ),
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
