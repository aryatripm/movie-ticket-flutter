import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/services/movie_service.dart';
import 'package:movie_ticket/widgets/movie_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(FirebaseAuth.instance.currentUser?.email ?? '-'),
            Expanded(
              child: FutureBuilder(
                future: MovieService().getListMovie(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                      children: (snapshot.data ?? [])
                          .map((e) => MovieItem(
                                movie: e,
                              ))
                          .toList(),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                context.goNamed('login');
              },
              child: const Text('Log out'),
            ),
          ],
        ),
      ),
    );
  }
}
