import 'package:flutter/material.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        elevation: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Miko Mall"),
            Text("Logo"),
          ],
        ),
      ),
    );
  }
}
