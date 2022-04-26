import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/utility/constants.dart';

final ThemeData appThemeData = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: Constants.fontName,
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: AppColors.textColorBlack,
        fontFamily: Constants.fontName,
        fontWeight: FontWeight.w700),
    headline2: TextStyle(
      color: AppColors.textColorWhite,
        fontFamily: Constants.fontName,
        fontWeight: FontWeight.w700),
  ),
);

class AppColors {
  AppColors._();

  static const Color bgColor = Color(0xFFE9C1B7);

  static const Color mainColor = Color(0xFF887ef2);

  static const Color purpalWithAlpha = Color(0xFFF0EFFF);

  static const Color textColorBlack = Color(0xFF000000);
  static const Color textColorWhite = Color(0xFFFFFFFF);
  
}
