import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/bloc/newticket_bloc.dart';
import 'package:movie_ticket/bloc/selectedmovie_bloc.dart';
import 'package:movie_ticket/entity/ticket.dart';
import 'package:movie_ticket/widgets/date_item.dart';
import 'package:movie_ticket/widgets/location_item.dart';

import '../widgets/time_item.dart';

class BookPage extends StatefulWidget {
  BookPage();

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  late List<DateTime> dates;
  late DateTime selectedDate;
  late String selectedTheater;
  late int selectedTime;

  @override
  void initState() {
    super.initState();

    dates =
        List.generate(7, (index) => DateTime.now().add(Duration(days: index)));
    selectedDate = DateTime.now();
    selectedTheater = "";
  }

  @override
  Widget build(BuildContext context) {
    context.read<NewticketBloc>().add(NewticketEvent.create(Ticket()));
    context.read<NewticketBloc>().add(NewticketEvent.editUserId(
        FirebaseAuth.instance.currentUser?.uid ?? '0'));
    context
        .read<NewticketBloc>()
        .add(NewticketEvent.editDate(Timestamp.fromDate(selectedDate)));
    context
        .read<NewticketBloc>()
        .add(NewticketEvent.editLocation(selectedTheater));
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
                  selected: (selectedMovie) {
                    context.read<NewticketBloc>().add(
                        NewticketEvent.editMovieId(
                            selectedMovie.id.toString()));
                    return '${selectedMovie.id}';
                  },
                  unselected: () => '-',
                ));
              },
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: generateDates(context),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: generateTimes(context),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Theatres Available"),
            Expanded(
              child: ListView(
                children: generateTheatres(context),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.pushNamed('seat'),
        label: const Text("Procced"),
        icon: const Icon(Icons.arrow_circle_right),
      ),
    );
  }

  List<DateItem> generateDates(BuildContext context) {
    List<DateItem> dateItems = [];
    for (var i = 0; i < dates.length; i++) {
      dateItems.add(
        DateItem(
          date: dates[i],
          isSelected: selectedDate.day == dates[i].day,
          onTap: () {
            dynamic newDate = dates[i].day;
            if (dates[i].day.toString().length == 1) {
              newDate = '0${newDate.toString()}';
            }
            setState(() {
              selectedDate = DateTime.parse(
                  '${selectedDate.year}-${selectedDate.month}-$newDate ${selectedDate.hour}:00:00');
            });
          },
        ),
      );
    }

    return dateItems;
  }

  List<TimeItem> generateTimes(BuildContext context) {
    List<TimeItem> times = [];

    for (var i = 10; i < 24; i += 3) {
      times.add(
        TimeItem(
          hours: i,
          isSelected: selectedDate.hour == i,
          onTap: () {
            dynamic newDate = selectedDate.day.toString();
            if (newDate.length == 1) {
              newDate = '0$newDate';
            }
            setState(() {
              selectedDate = DateTime.parse(
                  '${selectedDate.year}-${selectedDate.month}-$newDate $i:00:00.000000');
            });
          },
        ),
      );
    }

    return times;
  }

  List<LocationItem> generateTheatres(BuildContext context) {
    List<LocationItem> theatres = [];
    List<String> nameTheatres = [
      "Miko Mall",
      "BEC Mall",
      "Istana Plaza",
      "Paris Van Java",
      "23 Paskal"
    ];
    List<String> logos = [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/CGV_logo.svg/64px-CGV_logo.svg.png",
      "https://static.wikia.nocookie.net/logopedia/images/2/24/Cinema-xxi-2012.png/revision/latest/scale-to-width-down/350?cb=20180729145006",
    ];

    for (var item in nameTheatres) {
      theatres.add(
        LocationItem(
          mall: item,
          logo: logos[0],
          isSelected: selectedTheater == item,
          onTap: () {
            setState(() {
              selectedTheater = item;
            });
          },
        ),
      );
    }

    return theatres;
  }
}
