import 'package:flutter/material.dart';

class Seat extends StatelessWidget {
  final int marginRight;
  final bool isSelected;
  final bool isEnabled;
  final Function onTap;
  const Seat(
      {Key? key,
      required this.marginRight,
      required this.isSelected,
      required this.isEnabled,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 20,
        height: 30,
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        margin: EdgeInsets.only(
          right: marginRight.toDouble(),
        ),
      ),
    );
  }
}
