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
        padding: const EdgeInsets.all(8),
        child: Text(movie.title),
      ),
    );
  }
}
