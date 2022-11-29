import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateItem extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  final Function onTap;

  DateItem(
      {Key? key,
      required this.date,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 100,
        child: Card(
          color: isSelected ? Colors.black54 : Colors.black12,
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
          elevation: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(DateFormat.E().format(date)),
              Text(date.day.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
