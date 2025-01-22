import 'package:flutter/material.dart';
import 'package:islamy/features/layout/widgets/hadith/hadith_data.dart';

import '../../../../core/constants/app_assets.dart';

class HadithItemCard extends StatelessWidget {
  final HadithData hadithData;

  const HadithItemCard({
    super.key,
    required this.hadithData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.hadithViewCard,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          hadithData.hadithTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'janna',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  hadithData.hadithContent,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'janna',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
