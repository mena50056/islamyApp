import 'package:flutter/material.dart';
import 'package:islamy/features/layout/pages/layout_page.dart';
import './presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (_){
          return const SplashScreen();

        },
        LayoutPage.routeName : (_){
          return const LayoutPage();
        }
      },
    );
  }
}
