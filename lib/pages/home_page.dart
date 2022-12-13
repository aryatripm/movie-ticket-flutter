import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_ticket/pages/main_page.dart';
import 'package:movie_ticket/pages/setting_page.dart';
import 'package:movie_ticket/pages/ticket_page.dart';
import 'package:movie_ticket/pages/user_page.dart';

import '../bloc/selectedmovie_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

final pages = [
  const MainPage(),
  const TicketPage(),
  const UserPage(),
  const SettingPage(),
];

class _HomePageState extends State<HomePage> {
  int _selectedMenu = 0;

  @override
  void initState() {
    super.initState();
    _selectedMenu = 0;
  }

  @override
  Widget build(BuildContext context) {
    context.read<SelectedmovieBloc>().add(const SelectedmovieEvent.unselect());
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Hi, ${FirebaseAuth.instance.currentUser!.email}"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         context.goNamed('tickets');
      //       },
      //       icon: const Icon(Icons.history),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         FirebaseAuth.instance.signOut();
      //         context.goNamed('login');
      //       },
      //       icon: const Icon(Icons.exit_to_app),
      //     ),
      //   ],
      // ),
      body: pages[_selectedMenu],
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        unselectedItemColor: Colors.white,
        currentIndex: _selectedMenu,
        backgroundColor: Colors.black,
        dotIndicatorColor: Colors.red,
        selectedItemColor: Colors.red,
        paddingR: const EdgeInsets.all(10),
        onTap: (p0) {
          setState(() {
            _selectedMenu = p0;
          });
        },
        items: [
          DotNavigationBarItem(icon: const Icon(Icons.home_filled)),
          DotNavigationBarItem(icon: const Icon(Icons.bookmark)),
          DotNavigationBarItem(icon: const Icon(Icons.person)),
          DotNavigationBarItem(icon: const Icon(Icons.settings)),
        ],
      ),
    );
  }
}
