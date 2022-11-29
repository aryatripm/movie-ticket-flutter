import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/bloc/newticket_bloc.dart';
import 'package:movie_ticket/widgets/seat_item.dart';

class SeatPage extends StatefulWidget {
  SeatPage();

  @override
  _SeatPageState createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  late List<String> selectedSeats;
  late int totalPrice;

  @override
  void initState() {
    super.initState();
    selectedSeats = [];
    totalPrice = 0;
  }

  @override
  Widget build(BuildContext context) {
    context.read<NewticketBloc>().add(NewticketEvent.editSeats(selectedSeats));
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Container(
            width: 300,
            height: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/screen.png'),
              ),
            ),
          ),
          const SizedBox(height: 10),
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
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
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
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
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
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
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
        onPressed: () => context.pushNamed('confirm'),
        label: BlocBuilder<NewticketBloc, NewticketState>(
          builder: (context, state) {
            return Text(state.when(
              initial: () => "Click seat first!",
              created: (ticket) =>
                  "Buy Ticket Rp. ${((ticket.seats?.length ?? 0) * 20000).toString()}",
            ));
          },
        ),
      ),
    );
  }

  Column generateSeats(BuildContext context) {
    List<Widget> seats = [];
    List<String> row = ['A', 'B', 'C', 'D', 'E'];
    int column = 9;
    for (var i = 0; i < row.length; i++) {
      seats.add(
        Container(
          margin: EdgeInsets.only(bottom: (i != row.length - 1 ? 10 : 0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              column,
              (index) => Seat(
                marginRight: (index == 1 || index == 6 ? 30 : 10),
                isSelected: selectedSeats.contains("${row[i]}$index"),
                isEnabled: false,
                onTap: () {
                  setState(() {
                    if (selectedSeats.contains("${row[i]}$index")) {
                      selectedSeats.remove("${row[i]}$index");
                    } else {
                      selectedSeats.add("${row[i]}$index");
                    }
                  });
                },
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
