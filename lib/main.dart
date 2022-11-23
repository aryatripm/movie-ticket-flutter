import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_ticket/firebase_options.dart';
import 'package:movie_ticket/pages/detail_page.dart';
import 'package:movie_ticket/pages/home_page.dart';
import 'package:movie_ticket/pages/login_page.dart';
import 'package:movie_ticket/pages/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => RegisterPage(),
      ),
      GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
              path: 'detail/:id',
              name: 'detail',
              builder: (context, state) =>
                  DetailPage(movieId: int.parse(state.params['id']!)),
            )
          ])
    ],
    debugLogDiagnostics: true,
    routerNeglect: false,
    initialLocation: FirebaseAuth.instance.currentUser == null ? '/login' : '/',
    redirect: (context, state) {
      // if (FirebaseAuth.instance.currentUser == null) {
      //   return '/login';
      // } else {
      return null;
      // }
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
