import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  // نمط العنوان الكبير (مثل Sims)
  TextStyle get simsTitleLarge => TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey[900],
        fontFamily: 'SimsFont', // يمكنك استخدام خط مخصص
      );

  // نمط العنوان المتوسط
  TextStyle get simsTitleMedium => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.blueGrey[800],
        fontFamily: 'SimsFont',
      );

  // نمط العنوان الصغير
  TextStyle get simsTitleSmall => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.blueGrey[700],
        fontFamily: 'SimsFont',
      );

  // نمط النص العادي
  TextStyle get simsBodyText => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.blueGrey[600],
        fontFamily: 'SimsFont',
      );

  // نمط النص الثانوي
  TextStyle get simsCaption => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: Colors.blueGrey[500],
        fontFamily: 'SimsFont',
      );

  // إضافة ظل للنص
  TextStyle withShadow({
    Color shadowColor = Colors.black54,
    double blurRadius = 2.0,
    Offset offset = const Offset(1.0, 1.0),
  }) {
    return copyWith(
      shadows: [
        Shadow(
          color: shadowColor,
          blurRadius: blurRadius,
          offset: offset,
        ),
      ],
    );
  }

  // تغيير لون النص
  TextStyle withColor(Color color) {
    return copyWith(color: color);
  }

  // تغيير حجم النص
  TextStyle withSize(double size) {
    return copyWith(fontSize: size);
  }
}
