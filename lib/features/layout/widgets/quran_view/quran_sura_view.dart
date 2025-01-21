import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/core/constants/app_assets.dart';
import 'package:islamy/features/layout/pages/quran_view.dart';

import '../../../../core/constants/colors.dart';

class QuranSuraView extends StatefulWidget {
  static const routeName = '/QuranSuraView';

  const QuranSuraView({super.key});

  @override
  State<QuranSuraView> createState() => _QuranSuraViewState();
}

class _QuranSuraViewState extends State<QuranSuraView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraData;
    if (versesList.isEmpty) loadData(args.suraNumber);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(AppAssets.quranViewSuraBg),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: AppColors.primaryColor,
          ),
          title: Text(
            args.suraNameEn,
            style: const TextStyle(
              fontFamily: 'janna',
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
              ),
              child: Text(
                args.suraNameAr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'janna',
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    child: Text(
                      "${versesList[index]} [${index + 1}]",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'janna',
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  );
                },
                itemCount: versesList.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  loadData(id) async {
    // var args = ModalRoute.of(context)!.settings.arguments as SuraData;
    String data = await rootBundle.loadString("assets/files/Suras/$id.txt");
    //print(data);
    setState(() {
      versesList = data.split("\n");
    });
  }
}
