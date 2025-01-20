import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islamy/features/layout/pages/layout_page.dart';
import '../../core/constants/app_assets.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
       const Duration(seconds: 2),
        () {
        Navigator.pushReplacementNamed(context, LayoutPage.routeName);

        },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    const Duration _duration = Duration(
      milliseconds: 1750,
    );
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.splashBG), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: FadeInDown(
                duration: _duration,
                child: Image.asset(
                  AppAssets.splashGlow,
                  height: size.height * .25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ZoomIn(
                duration: _duration,
                child: Image.asset(
                  AppAssets.splashLogo,
                  height: size.height * .25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                duration: _duration,
                child: Image.asset(
                  AppAssets.splashRoute,
                  height: size.height * .25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .25),
              child: Align(
                alignment: Alignment.centerRight,
                child: FadeInRight(
                  duration: _duration,
                  child: Image.asset(
                    AppAssets.splashShape04,
                    width: size.width * .25,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: size.height * 0.25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: FadeInLeft(
                  duration: _duration,
                  child: Image.asset(
                    AppAssets.splashShape07,
                    width: size.width * .25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
