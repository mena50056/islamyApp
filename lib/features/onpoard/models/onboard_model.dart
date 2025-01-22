import 'package:islamy/core/constants/app_assets.dart';

class OnboardModel {
  String image;
  String title;
  String? description;

  OnboardModel({required this.image, required this.title, this.description});

  static List<OnboardModel> onboardList = [
    OnboardModel(
      image: AppAssets.onpord1,
      title: "Welcome To Islmi App",
    ),
    OnboardModel(
        image: AppAssets.onpord2,
        title: "Welcome To Islami",
        description: "We Are Very Excited To Have You In Our Community"),
    OnboardModel(
        image: AppAssets.onpord3,
        title: "Reading the Quran",
        description: "Read, and your Lord is the Most Generous"),
    OnboardModel(
        image: AppAssets.onpord4,
        title: "Bearish",
        description: "Praise the name of your Lord, the Most High"),
    OnboardModel(
        image: AppAssets.onpord5,
        title: "Holy Quran Radio",
        description:
            "You can listen to the Holy Quran Radio through the application for free and easily"),
  ];
}
