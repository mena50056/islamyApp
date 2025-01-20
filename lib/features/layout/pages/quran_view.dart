import 'package:flutter/material.dart';
import 'package:islamy/core/constants/app_assets.dart';
import 'package:islamy/features/layout/widgets/quran_view/resent.dart';

import '../../../core/constants/colors.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AppAssets.quranViewLogo),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              style: const TextStyle(
                color: AppColors.white,
              ),
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                hintText: "Sura Name",
                hintStyle: const TextStyle(
                  color: Color(0xffFEFFE8),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                fillColor: AppColors.secondaryColor.withOpacity(.5),
                filled: true,
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ImageIcon(
                    AssetImage(
                      AppAssets.quranIcon,
                    ),
                    color: AppColors.primaryColor,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              'Most Recently ',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: SizedBox(
              height: 155,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const Resent(),
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
