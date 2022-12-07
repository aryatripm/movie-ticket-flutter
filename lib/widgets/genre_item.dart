import 'package:flutter/material.dart';
import 'package:movie_ticket/entity/genre.dart';

class GenreItem extends StatelessWidget {
  final Genre genre;

  GenreItem({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(
          color: Color(0xFF383737),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Text(genre.name),
    );
  }
}
