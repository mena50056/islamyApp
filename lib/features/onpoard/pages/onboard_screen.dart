import 'package:flutter/material.dart';
import 'package:islamy/core/constants/app_assets.dart';
import 'package:islamy/core/constants/colors.dart';
import 'package:islamy/core/constants/local_storage_keys.dart';
import 'package:islamy/core/servises/local_storge.dart';
import 'package:islamy/features/layout/pages/layout_page.dart';
import 'package:islamy/features/onpoard/models/onboard_model.dart';
import 'package:islamy/features/onpoard/widgets/onboard_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatefulWidget {
  static String routeName = "/onboardScreen";

  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  var activeIndex = 0;
  var controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LocalStorage.setBool(LocalStorageKeys.firstRun, true);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 16,
              ),
              Image.asset(
                AppAssets.onpordLogo,
                height: size.height * .16,
                alignment: Alignment.center,
              ),
              Expanded(
                child: PageView.builder(
                    controller: controller,
                    onPageChanged: (index) {
                      activeIndex = index;
                      setState(() {});
                    },
                    itemCount: OnboardModel.onboardList.length,
                    itemBuilder: (context, index) {
                      var onBoardModel = OnboardModel.onboardList[index];
                      return OnboardItem(onboardModel: onBoardModel);
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: activeIndex != 0,
                    child: TextButton(
                      onPressed: () {
                        controller.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                        if (activeIndex > 0) {
                          activeIndex--;
                        }
                      },
                      child: const Text(
                        "Back",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "janna",
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: OnboardModel.onboardList.length,
                    effect: const ExpandingDotsEffect(
                        activeDotColor: AppColors.primaryColor,
                        dotColor: AppColors.darkGray,
                        dotHeight: 10,
                        dotWidth: 10),
                  ),
                  TextButton(
                    onPressed: () {
                      if (activeIndex == OnboardModel.onboardList.length - 1) {
                        Navigator.pushNamed(context, LayoutPage.routeName);
                        return;
                      }
                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                      if (activeIndex < OnboardModel.onboardList.length) {
                        activeIndex++;
                      }
                    },
                    child: Text(
                      activeIndex == OnboardModel.onboardList.length - 1
                          ? "Finish"
                          : "Next",
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "janna",
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
