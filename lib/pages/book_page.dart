import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/bloc/selectedmovie_bloc.dart';
import 'package:movie_ticket/widgets/date_item.dart';
import 'package:movie_ticket/widgets/location_item.dart';

import '../widgets/time_item.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<SelectedmovieBloc, SelectedmovieState>(
              builder: (context, state) {
                return Text(state.when(
                  selected: (selectedMovie) => '${selectedMovie.id}',
                  unselected: () => '-',
                ));
              },
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DateItem(),
                  DateItem(),
                  DateItem(),
                  DateItem(),
                  DateItem(),
                  DateItem(),
                  DateItem(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  TimeItem(),
                  TimeItem(),
                  TimeItem(),
                  TimeItem(),
                  TimeItem(),
                  TimeItem(),
                  TimeItem(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Theatres Available"),
            Expanded(
              child: ListView(
                children: const [
                  LocationItem(),
                  LocationItem(),
                  LocationItem(),
                  LocationItem(),
                  LocationItem(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.goNamed('seat'),
        label: const Text("Procced"),
        icon: const Icon(Icons.arrow_circle_right),
      ),
    );
  }
}
