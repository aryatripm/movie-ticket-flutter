import 'package:flutter/material.dart';

class LocationItem extends StatelessWidget {
  final String mall;
  final String logo;
  final bool isSelected;
  final Function onTap;

  LocationItem(
      {Key? key,
      required this.mall,
      required this.logo,
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
        height: 70,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff383737) : Colors.transparent,
          // border: Border.all(
          //   color: Colors.red,
          // ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              mall,
              style: const TextStyle(fontSize: 16),
            ),
            Image.network(logo, width: 100),
          ],
        ),
      ),
    );
  }
}
