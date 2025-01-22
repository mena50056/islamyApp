import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/features/layout/widgets/hadith/hadith_data.dart';

import '../../../core/constants/app_assets.dart';
import '../widgets/hadith/hadith_item_card.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<HadithData> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) loadHadithData();
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.hadithViewBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppAssets.quranViewLogo,
            ),
            Expanded(
              child: CarouselSlider(
                  items: hadithList
                      .map((e) => HadithItemCard(hadithData: e))
                      .toList(),
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 0.7,
                    viewportFraction: 0.60,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    scrollDirection: Axis.horizontal,
                  )),
            )
          ],
        ),
      ),
    );
  }

  loadHadithData() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadithList = content.split('#');
    for (var element in allHadithList) {
      String singleHadith = element.trim();
      int index = singleHadith.indexOf("\n");

      String hadithContent = singleHadith.substring(index + 1);
      String hadithTitle = singleHadith.substring(0, index);
      var hadithData =
          HadithData(hadithTitle: hadithTitle, hadithContent: hadithContent);

      hadithList.add(hadithData);

      setState(() {
        // print(hadithList[i].hadithTitle);
      });
    }
  }
}
