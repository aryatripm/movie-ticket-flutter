import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket/entity/movie.dart';
import 'package:movie_ticket/services/movie_service.dart';

class DetailPage extends StatelessWidget {
  final int movieId;
  const DetailPage({Key? key, required this.movieId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Center(
        child: FutureBuilder(
          future: MovieService().getMovie(movieId),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.network(
                      "https://image.tmdb.org/t/p/w500${snapshot.data?.backdrop_path ?? '-'}",
                    ),
                  ),
                  Text(snapshot.data?.id.toString() ?? '-'),
                  Text(snapshot.data?.title ?? '-'),
                  Text(snapshot.data?.overview ?? '-'),
                  Text(snapshot.data?.vote_average.toString() ?? '-'),
                  Text(snapshot.data?.release_date ?? '-'),
                  Text(snapshot.data?.genres.toString() ?? '-'),
                ],
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          var userId = FirebaseAuth.instance.currentUser!.uid;
        },
        label: const Text("Book Ticket"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
