import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData darkMode = ThemeData(
    useMaterial3: true,
    fontFamily: "Montserrat",
    scaffoldBackgroundColor: const Color(0xFF161616),
    // colorScheme: const ColorScheme.dark(),
    brightness: Brightness.dark,
    primarySwatch: Colors.red,
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Color(0xFF383737),
      actionTextColor: Colors.white,
      contentTextStyle: TextStyle(color: Colors.white),
    ),

    // textTheme: TextTheme(
    //   bodyLarge: const TextStyle(color: Color(0xFFD9D9D9)),
    //   bodyMedium: const TextStyle(color: Color(0xFFD9D9D9)),
    //   bodySmall: const TextStyle(color: Color(0xFFD9D9D9)),
    //   button: const TextStyle(color: Color(0xFFD9D9D9)),
    //   bodyText1: const TextStyle(color: Color(0xFFD9D9D9)),
    //   bodyText2: const TextStyle(color: Color(0xFFD9D9D9)),
    //   displayLarge: const TextStyle(color: Color(0xFFD9D9D9)),
    //   displayMedium: const TextStyle(color: Color(0xFFD9D9D9)),
    //   displaySmall: const TextStyle(color: Color(0xFFD9D9D9)),
    //   headline1: const TextStyle(color: Color(0xFFD9D9D9)),
    //   headline2: const TextStyle(color: Color(0xFFD9D9D9)),
    //   headline3: const TextStyle(color: Color(0xFFD9D9D9)),
    //   headline4: const TextStyle(color: Color(0xFFD9D9D9)),
    //   headline5: const TextStyle(color: Color(0xFFD9D9D9)),
    //   headline6: const TextStyle(color: Color(0xFFD9D9D9)),
    //   headlineLarge: const TextStyle(color: Color(0xFFD9D9D9)),
    //   headlineMedium: const TextStyle(color: Color(0xFFD9D9D9)),
    //   headlineSmall: const TextStyle(color: Color(0xFFD9D9D9)),
    //   caption: const TextStyle(color: Color(0xFFD9D9D9)),
    //   labelLarge: const TextStyle(color: Color(0xFFD9D9D9)),
    //   labelMedium: const TextStyle(color: Color(0xFFD9D9D9)),
    //   labelSmall: const TextStyle(color: Color(0xFFD9D9D9)),
    //   overline: const TextStyle(color: Color(0xFFD9D9D9)),
    //   subtitle1: const TextStyle(color: Color(0xFFD9D9D9)),
    //   subtitle2: const TextStyle(color: Color(0xFFD9D9D9)),
    //   titleLarge: const TextStyle(color: Color(0xFFD9D9D9)),
    //   titleMedium: const TextStyle(color: Color(0xFFD9D9D9)),
    //   titleSmall: const TextStyle(color: Color(0xFFD9D9D9)),
    // ),
  );
}
