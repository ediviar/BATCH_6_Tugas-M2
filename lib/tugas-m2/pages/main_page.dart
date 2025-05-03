import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'The Main Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
