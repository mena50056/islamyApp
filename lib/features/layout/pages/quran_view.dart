import 'package:flutter/material.dart';
import 'package:islamy/core/constants/app_assets.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.quranViewBg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
