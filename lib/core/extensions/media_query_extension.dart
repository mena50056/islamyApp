import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  // الحصول على ارتفاع الشاشة
  double get screenHeight => MediaQuery.of(this).size.height;

  // الحصول على عرض الشاشة
  double get screenWidth => MediaQuery.of(this).size.width;

  // الحصول على نسبة الارتفاع بناءً على نسبة مئوية
  double heightPercent(double percent) => screenHeight * (percent / 100);

  // الحصول على نسبة العرض بناءً على نسبة مئوية
  double widthPercent(double percent) => screenWidth * (percent / 100);

  // التحقق مما إذا كان الجهاز في الوضع الأفقي
  bool get isLandscape => MediaQuery.of(this).orientation == Orientation.landscape;

  // التحقق مما إذا كان الجهاز في الوضع العمودي
  bool get isPortrait => MediaQuery.of(this).orientation == Orientation.portrait;

  // الحصول على سطوع النظام (فاتح أو غامق)
  Brightness get systemBrightness => MediaQuery.of(this).platformBrightness;

  // التحقق مما إذا كان النظام في الوضع الليلي (Dark Mode)
  bool get isDarkMode => systemBrightness == Brightness.dark;

  // الحصول على ارتفاع شريط الحالة (Status Bar)
  double get statusBarHeight => MediaQuery.of(this).padding.top;

  // الحصول على ارتفاع شريط التنقل (Navigation Bar)
  double get navigationBarHeight => MediaQuery.of(this).padding.bottom;
}