import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/services/movie_service.dart';
import 'package:movie_ticket/widgets/movie_item.dart';

import '../bloc/selectedmovie_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SelectedmovieBloc>().add(const SelectedmovieEvent.unselect());
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi, ${FirebaseAuth.instance.currentUser!.email}"),
        actions: [
          IconButton(
            onPressed: () {
              context.goNamed('tickets');
            },
            icon: const Icon(Icons.history),
          ),
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              context.goNamed('login');
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Trending",
              style: TextStyle(fontSize: 18),
            ),
            Container(
              height: 200,
              child: FutureBuilder(
                future: MovieService().getListMovieTrending(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: (snapshot.data ?? [])
                          .map((e) => MovieItem(
                                movie: e,
                              ))
                          .toList(),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Now Showing",
              style: TextStyle(fontSize: 18),
            ),
            Container(
              height: 200,
              child: FutureBuilder(
                future: MovieService().getListMovieNowShowing(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: (snapshot.data ?? [])
                          .map((e) => MovieItem(
                                movie: e,
                              ))
                          .toList(),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Coming Soon",
              style: TextStyle(fontSize: 18),
            ),
            Container(
              height: 200,
              child: FutureBuilder(
                future: MovieService().getListMovieTrendingComingSoon(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: (snapshot.data ?? [])
                          .map((e) => MovieItem(
                                movie: e,
                              ))
                          .toList(),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
