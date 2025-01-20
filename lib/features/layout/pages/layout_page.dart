import 'package:flutter/material.dart';
import 'package:islamy/core/constants/app_assets.dart';
import 'package:islamy/core/constants/colors.dart';
import 'package:islamy/features/layout/pages/hadith_view.dart';
import 'package:islamy/features/layout/pages/quran_view.dart';
import 'package:islamy/features/layout/pages/radio_view.dart';
import 'package:islamy/features/layout/pages/sebha_view.dart';
import 'package:islamy/features/layout/pages/time_view.dart';

import '../widgets/custom_nav_bar_item.dart';

class LayoutPage extends StatefulWidget {
  static String routeName = "/layout";

  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int selectIndex = 0;
  List<Widget> tabs = [
    const QuranView(),
    const HadithView(),
    const SebhaView(),
    const RadioView(),
    const TimeView()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: tabs[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColor,
        fixedColor: AppColors.white,
        showUnselectedLabels: false,
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectIndex: selectIndex,
              navBarItem: 0,
              itemPath: AppAssets.quranIcon,
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectIndex: selectIndex,
              navBarItem: 1,
              itemPath: AppAssets.hadesIcon,
            ),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectIndex: selectIndex,
              navBarItem: 2,
              itemPath: AppAssets.sebhaIcon,
            ),
            label: "Sbha",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectIndex: selectIndex,
              navBarItem: 3,
              itemPath: AppAssets.radioIcon,
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              selectIndex: selectIndex,
              navBarItem: 4,
              itemPath: AppAssets.timeIcon,
            ),
            label: "Times",
          ),
        ],
      ),
    );
  }
}
