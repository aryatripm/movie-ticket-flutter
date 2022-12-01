import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/entity/movie.dart';

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
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://image.tmdb.org/t/p/w500${movie.poster_path}"),
          ),
        ),
      ),
    );
  }
}
