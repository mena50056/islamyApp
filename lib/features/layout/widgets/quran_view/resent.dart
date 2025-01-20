import 'package:flutter/material.dart';
import 'package:islamy/core/constants/colors.dart';

import '../../../../core/constants/app_assets.dart';

class Resent extends StatelessWidget {
  const Resent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      // width: 285,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Al-Anbiya",
                style: TextStyle(
                  color: Color(0xff202020),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "الأنبياء",
                style: TextStyle(
                  color: Color(0xff202020),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "112 Verses  ",
                style: TextStyle(
                  color: Color(0xff202020),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Image.asset(AppAssets.quranViewRecent),
        ],
      ),
    );
  }
}
