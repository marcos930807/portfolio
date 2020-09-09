import 'package:flutter/material.dart';

import 'app_colors.dart';

enum AppTheme {
  Light,
  Dark,
}

final appThemeData = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: Colors.blue,
    ),
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    accentColor: AppColors.accentColor,
    scaffoldBackgroundColor: Colors.grey[50],
    primaryIconTheme: IconThemeData(color: Colors.blue),
    iconTheme: IconThemeData(color: Colors.black),

    //  scaffoldBackgroundColor: AppColors.scaffoldbackground,
  ),
  AppTheme.Dark: ThemeData(
    brightness: Brightness.dark,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0, backgroundColor: AppColors.primaryColor),
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    primaryIconTheme: IconThemeData(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
    accentIconTheme: IconThemeData(color: Colors.white),
    scaffoldBackgroundColor: Color(0xFF222636),
    cardColor: Color(0xFF2A3042),
    canvasColor: Color(0xFF2A3042),
    accentColor: Color(0xFF2A3042),
  ),
};
