import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  var counter = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.sebhaViewBg),
            fit: BoxFit.cover,
          ),
        ),
        child: GestureDetector(
          onTap: _onPressed,
          child: Column(
            children: [
              Image.asset(AppAssets.quranViewLogo),
              const Text(
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: "janna",
                ),
              ),
              Image.asset(AppAssets.sebhaViewHead),
              Stack(alignment: Alignment.center, children: [
                Transform.rotate(
                  angle: angle,
                  child: Center(
                    child: Image.asset(
                      AppAssets.sebhaViewBody,
                      height: size.height * .35,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    counter.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: "janna",
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }

  _onPressed() {
    counter++;
    angle -= 10;
    setState(() {});
  }
}
