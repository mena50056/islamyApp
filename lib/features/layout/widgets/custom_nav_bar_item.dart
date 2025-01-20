import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class CustomNavBarItem extends StatelessWidget {
  final int selectIndex;

  final int navBarItem;

  final String itemPath;

  const CustomNavBarItem({
    super.key,
    required this.selectIndex,
    required this.navBarItem,
    required this.itemPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: selectIndex == navBarItem
            ? AppColors.secondaryColor.withOpacity(.5)
            : Colors.transparent,
      ),
      child:  ImageIcon(AssetImage(itemPath)),
    );
  }
}
