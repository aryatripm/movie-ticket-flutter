import 'package:flutter/material.dart';

class DateItem extends StatelessWidget {
  const DateItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Card(
        margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        elevation: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Day"),
            Text("00"),
          ],
        ),
      ),
    );
  }
}
