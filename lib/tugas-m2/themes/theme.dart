import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.green,
    surfaceTintColor: Colors.green,
    centerTitle: false,
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  scaffoldBackgroundColor: Colors.white
);

final darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    surfaceTintColor: Colors.black,
    centerTitle: false,
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  scaffoldBackgroundColor: Colors.grey[900],
);