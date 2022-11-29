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
        height: 100,
        child: Card(
          color: isSelected ? Colors.black54 : Colors.black12,
          margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          elevation: 1,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(mall),
                Image.network(logo, width: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
