import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:movie_ticket/bloc/selectedmovie_bloc.dart';
import 'package:movie_ticket/entity/movie.dart';
import 'package:movie_ticket/services/movie_service.dart';
import 'package:movie_ticket/services/ticket_services.dart';
import 'package:movie_ticket/widgets/genre_item.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailPage extends StatelessWidget {
  final int movieId;
  const DetailPage({Key? key, required this.movieId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: MovieService().getMovie(movieId),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              context
                  .read<SelectedmovieBloc>()
                  .add(SelectedmovieEvent.select(snapshot.data!));
              return ListView(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              opacity: 0.5,
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                  "https://image.tmdb.org/t/p/original${snapshot.data?.backdrop_path ?? '-'}")),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 501,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: const Alignment(0, 1),
                              end: const Alignment(0, 0.06),
                              colors: [
                                const Color(0xFF161616),
                                const Color(0xFF161616).withOpacity(0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 0,
                        child: TextButton.icon(
                          label: const Text("Back"),
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            context.pop();
                          },
                        ),
                      ),
                      Container(
                        height: 500,
                        child: Center(
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.play_circle_fill_outlined),
                            onPressed: () {
                              _showPlayer(snapshot.data!.id, context);
                            },
                            label: const Text("Trailer"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingBarIndicator(
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 15,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          unratedColor: Colors.white,
                          rating: (snapshot.data?.vote_average ?? 0) / 2,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          snapshot.data?.title ?? '-',
                          style: const TextStyle(fontSize: 30),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.timer, color: Colors.red),
                            const SizedBox(width: 5),
                            Text("${snapshot.data?.runtime} Minutes"),
                            const SizedBox(width: 10),
                            const Icon(Icons.calendar_today, color: Colors.red),
                            const SizedBox(width: 5),
                            Text(snapshot.data?.release_date ?? '-'),
                            const SizedBox(width: 10),
                            const Icon(Icons.language, color: Colors.red),
                            const SizedBox(width: 5),
                            Text(snapshot.data?.original_language
                                    .toUpperCase() ??
                                '-'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 40,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: (snapshot.data?.genres ?? [])
                                .map((e) => GenreItem(genre: e))
                                .toList(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          snapshot.data?.overview ?? '-',
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                          overflow: TextOverflow.fade,
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              context.pushNamed('add_ticket');
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 70,
                                vertical: 15,
                              ),
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text("Book Now",
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  void _showPlayer(int id, BuildContext context) {
    MovieService().getMovieTrailer(id).then((value) {
      YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: value ?? "",
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: true,
          forceHD: true,
        ),
      );

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: StadiumBorder(),
            contentPadding: const EdgeInsets.all(0),
            content: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
              progressColors: const ProgressBarColors(
                handleColor: Colors.red,
                bufferedColor: Colors.red,
                playedColor: Colors.red,
              ),
            ),
          );
        },
      );
    });
  }
}
