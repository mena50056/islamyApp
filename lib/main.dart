import 'package:flutter/material.dart';
import 'package:islamy/core/servises/local_storge.dart';
import 'package:islamy/features/layout/pages/layout_page.dart';
import 'package:islamy/features/layout/widgets/quran_view/quran_sura_view.dart';

import './presentation/pages/splash_screen.dart';
import 'features/onpoard/pages/onboard_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  //mmmm
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
        },
        QuranSuraView.routeName: (_) {
          return const QuranSuraView();
        },
        OnboardScreen.routeName: (_) {
          return const OnboardScreen();
        }
      },
    );
  }
}
