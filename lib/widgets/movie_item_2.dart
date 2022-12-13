import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/entity/movie.dart';

class MovieItem2 extends StatelessWidget {
  final Movie movie;

  const MovieItem2({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => context.pushNamed(
      //   'detail',
      //   params: {"id": movie.id.toString()},
      // ),

      child: Container(
        margin: const EdgeInsets.all(5),
        height: 200,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            opacity: 0.5,
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://image.tmdb.org/t/p/w500${movie.backdrop_path}"),
          ),
        ),
        child: Center(
          child: Text(
            movie.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
