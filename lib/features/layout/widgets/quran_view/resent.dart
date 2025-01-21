import 'package:flutter/material.dart';
import 'package:islamy/core/constants/colors.dart';
import 'package:islamy/model/resent_data.dart';

import '../../../../core/constants/app_assets.dart';

class Resent extends StatelessWidget {
  final ResentData resentData;

  const Resent({super.key, required this.resentData});

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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                resentData.suraNameEn,
                style: const TextStyle(
                  color: Color(0xff202020),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                resentData.suraNameAr,
                style: const TextStyle(
                  color: Color(0xff202020),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${resentData.suraVerses} Verses  ",
                style: const TextStyle(
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
