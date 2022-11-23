import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: 277,
            height: 84,
            decoration: const BoxDecoration(color: Colors.amber
                // image: DecorationImage(
                //   image: AssetImage('assets/screen.png'),
                // ),
                ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            child: generateSeats(context),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.amber,
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(height: 5),
                  const Text("Available"),
                ],
              ),
              Column(
                children: [
                  Container(
                    color: Colors.amber,
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(height: 5),
                  const Text("Taken"),
                ],
              ),
              Column(
                children: [
                  Container(
                    color: Colors.amber,
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(height: 5),
                  const Text("Selected"),
                ],
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Buy Ticket Rp. 30.000"),
      ),
    );
  }

  Column generateSeats(BuildContext context) {
    List<Widget> seats = [];
    int row = 5;
    int column = 9;
    for (var i = 0; i < row; i++) {
      seats.add(
        Container(
          margin: EdgeInsets.only(bottom: (i != row - 1 ? 10 : 0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              column,
              (index) => Container(
                width: 20,
                height: 20,
                color: Colors.amber,
                margin: EdgeInsets.only(
                  right: (index == 1 || index == 6 ? 30 : 10),
                ),
              ),
            ),
          ),
        ),
      );
    }
    return Column(
      children: seats,
    );
  }
}
