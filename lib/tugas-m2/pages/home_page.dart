import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/tugas-m2/bloc/theme_cubit.dart';
import 'package:project2/tugas-m2/pages/main_page.dart';
import 'package:project2/tugas-m2/pages/profile_page.dart';
import 'package:project2/tugas-m2/pages/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late String _title;

  final List<Widget> _children = [
    MainPage(),
    ProfilePage(),
    SettingPage(),
  ];

  @override
  void initState(){
    super.initState();
    _title = 'Home';
  }

  void onTabTapped(int index) {
     setState(() {
     _currentIndex = index;
      switch(index) { 
       case 0: { _title = 'Home'; } 
       break; 
       case 1: { _title = 'Profile'; } 
       break;
       case 2: { _title = 'Setting'; }
       break; 
      } 
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(context.watch<ThemeCubit>().state.isDarkMode),
                ),
              );
            },
            icon: Icon(
              context.watch<ThemeCubit>().state == ThemeMode.dark
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            tooltip: 'Toggle Theme',
          )
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}

extension on ThemeMode {
  String get isDarkMode => this == ThemeMode.dark ? 'Dark Mode' : 'Light Mode';
}
