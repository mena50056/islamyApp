import 'package:flutter/material.dart';
import 'package:islamy/core/constants/app_assets.dart';

import '../../../../core/constants/colors.dart';

class SuraCard extends StatelessWidget {
  final String suraNameAr;
  final String suraNameEn;
  final String suraVerses;
  final int suraNumber;

  const SuraCard({
    super.key,
    required this.suraNameAr,
    required this.suraNameEn,
    required this.suraVerses,
    required this.suraNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppAssets.quranViewSuraNum),
            )),
            child: Text(
              suraNumber.toString(),
              style: const TextStyle(
                  fontFamily: 'janna',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraNameEn,
                style: const TextStyle(
                  fontFamily: 'janna',
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$suraVerses Verses ',
                style: const TextStyle(
                  fontFamily: 'janna',
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            suraNameAr,
            style: const TextStyle(
              fontFamily: 'janna',
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
