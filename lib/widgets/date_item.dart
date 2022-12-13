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
        width: 60,
        margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        decoration: BoxDecoration(
            // color: isSelected ? Colors.red : const Color(0xFF383737),
            color: isSelected ? const Color(0xff383737) : Colors.transparent,
            border: Border.all(
              color: const Color(0xff383737),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat.E().format(date),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              date.day.toString(),
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
