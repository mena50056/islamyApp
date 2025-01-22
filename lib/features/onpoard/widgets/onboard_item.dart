import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../models/onboard_model.dart';

class OnboardItem extends StatelessWidget {
  final OnboardModel onboardModel;

  const OnboardItem({super.key, required this.onboardModel});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          onboardModel.image,
          height: size.height * .40,
        ),
        Text(
          onboardModel.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "janna",
              color: AppColors.primaryColor),
        ),
        Text(
          onboardModel.description ?? "",
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "janna",
              color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
