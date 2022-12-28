import 'package:flutter/material.dart';

class PriceItem extends StatelessWidget {
  final String price;
  final bool isSelected;
  final Function onTap;

  PriceItem(
      {Key? key,
      required this.price,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: (MediaQuery.of(context).size.width / 2) - 30,
        height: (MediaQuery.of(context).size.width / 2) - 30,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : const Color(0xFF373838),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(
          "IDR \n$price",
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
