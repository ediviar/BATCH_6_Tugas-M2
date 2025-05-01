import 'package:flutter/material.dart';
import 'package:project2/tugas-m2/routes/route.dart';
import 'package:project2/tugas-m2/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas-M2 Flutter',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: routes,
      initialRoute: MyRoutes.homeRoute,
    );
  }
}
