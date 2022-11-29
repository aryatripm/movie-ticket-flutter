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
        child: Card(
          color: isSelected ? Colors.black54 : Colors.black12,
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
          elevation: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$hours:00"),
            ],
          ),
        ),
      ),
    );
  }
}
