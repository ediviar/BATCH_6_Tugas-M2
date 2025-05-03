import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/tugas-m2/bloc/theme_cubit.dart';
import 'package:project2/tugas-m2/routes/route.dart';
import 'package:project2/tugas-m2/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Tugas-M2 Flutter',
            themeMode: state,
            theme: lightTheme,
            darkTheme: darkTheme,
            routes: routes,
            initialRoute: MyRoutes.homeRoute,
          );
        }
      ),
    );
  }
}
