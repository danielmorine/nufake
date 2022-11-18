import 'package:flutter/material.dart';
import 'package:nufake/theme/app_colors.dart';

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  brightness: Brightness.light,
  textTheme: TextTheme(
    bodySmall: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(fontSize: 16, color: AppColors.textMediumColor),
    bodyLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);
