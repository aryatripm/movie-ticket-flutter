import 'package:flutter/material.dart';

class TimeItem extends StatelessWidget {
  final int hours;
  final bool isSelected;
  final Function onTap;

  TimeItem(
      {Key? key,
      required this.hours,
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
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff383737) : Colors.transparent,
          border: Border.all(
            color: const Color(0xff383737),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$hours:00"),
          ],
        ),
      ),
    );
  }
}
