import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/entity/movie.dart';
import 'package:movie_ticket/widgets/genre_item.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        'detail',
        params: {"id": movie.id.toString()},
      ),
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 200,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.5,
            image: NetworkImage(
                "https://image.tmdb.org/t/p/w500${movie.poster_path}"),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                movie.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  overflow: TextOverflow.fade,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  movie.overview,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                  maxLines: 3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    label: Text(movie.vote_average.toString()),
                    avatar: const Icon(Icons.star),
                  ),
                  Chip(label: Text(movie.original_language.toUpperCase())),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed(
                    'detail',
                    params: {"id": movie.id.toString()},
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text(
                  "Book",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
