import 'package:flutter/material.dart';


class AppRoutes {
  static const String home = '/';
  static const String about = '/about';
  static const String contact = '/contact';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case home:
      //   return MaterialPageRoute(builder: (_) => HomePage());
      // case about:
      //   return MaterialPageRoute(builder: (_) => AboutPage());
      // case contact:
      //   return MaterialPageRoute(builder: (_) => ContactPage());
      default:
        throw Exception('Route not found');
    }
  }
}