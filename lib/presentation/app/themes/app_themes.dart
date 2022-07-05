import 'package:flutter/material.dart';

import 'app_colors.dart';

enum AppTheme {
  Light,
  Dark,
}

final appThemeData = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: Colors.blue,
    ),
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    accentColor: AppColors.accentColor,
    scaffoldBackgroundColor: Colors.grey[50],
    primaryIconTheme: const IconThemeData(color: Colors.blue),
    iconTheme: const IconThemeData(color: Colors.black),

    //  scaffoldBackgroundColor: AppColors.scaffoldbackground,
  ),
  AppTheme.Dark: ThemeData(
    brightness: Brightness.dark,
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(elevation: 0, backgroundColor: AppColors.primaryColor),
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    iconTheme: const IconThemeData(color: Colors.white),
    accentIconTheme: const IconThemeData(color: Colors.white),
    scaffoldBackgroundColor: const Color(0xFF222636),
    cardColor: const Color(0xFF2A3042),
    canvasColor: const Color(0xFF2A3042),
    accentColor: const Color(0xFF2A3042),
  ),
};
