import 'package:project2/tugas-m2/pages/home_page.dart';
import 'package:project2/tugas-m2/pages/main_page.dart';
import 'package:project2/tugas-m2/pages/profile_page.dart';
import 'package:project2/tugas-m2/pages/setting_page.dart';

class MyRoutes {
  static String homeRoute = "/";
  static String mainRoute = "/main";
  static String profileRoute = "/profile";
  static String settingRoute = "/setting";
}

final routes = {
  MyRoutes.homeRoute: (context) => const HomePage(),
  MyRoutes.mainRoute: (context) => const MainPage(),
  MyRoutes.profileRoute: (context) => const ProfilePage(),
  MyRoutes.settingRoute: (context) => const SettingPage(),
};