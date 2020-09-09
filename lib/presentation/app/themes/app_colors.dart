import 'package:flutter/material.dart';

String hexFromDartColor(Color color) =>
    '#${color.value.toRadixString(16).substring(2)}';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class AppColors {
  static const Color scaffoldbackground = Color(0xFFFFFFFF);
  static const Color accentColor = Color(0xFFF3F1FE);
  static const Color primaryColor = Color(0xFF02D7D9);
  static const Color secondaryColor = Color(0xFF019798);
  static const Color secondaryColor2 = Color(0xFF03969C);
  static const Color iconColor = Color(0xFF2B2369);
  static const Color succesColor = Color(0xFF49C496);
  static const Color floatingButtonColor = Color(0xFF646EF2);
  static const Color dashBoardSalesColor = Color(0xFF4A148C);
  static const Color dashBoardClientColor = Color(0xFF00B0FF);
  static const Color dashBoardProductColor = Color(0xFFF23891);
  static const Color dashBoardPaymentColor = Color(0xFF00BD2D);
  static const Color dashBoardPaymentColor2 = Color(0xFF5165DC);
  static const Color shapeColor = Color(0xFF000000);
  static const Color reminderColor = Color(0xFFA1F389);

  static const Color scaffoldGradientStart = Color(0XFFAEDDF5);
  static const Color scaffoldGradientEnd = Color(0XFFF4FAFF);
  static const Color headerDarkBlue = Color(0XFF00AAF9);
  static const Color headerLighBlue = Color(0XFF00AAF7);
  static const Color headerGradientStart = Color(0XFFAFDEF6);
  static const Color headerGradientEnd = Color(0XFF00AAF7);
  static const Color headerGradientStart2 = Color(0XFF2BB6FA);
  static const Color headerGradientEnd2 = Color(0XFF2BB6FA);
  static const Color headerLighBlue2 = Color(0XFFDAF0FD);

  static const Color notificationColor = Color(0XFF0D1B55);

  static const Color dashboardTilesTextColor = Color(0XFF1C0E5D);
  static const Color dashboardTilesCircleColor2 = Color(0XFF07C0D7);
  static const Color dashboardTilesCircleColor = Color(0XFF4424A8);
  static const Color shadowCardBorderColor = Color(0XFFF3F2F9);
  static const Color facturarColor = Color(0XFF4424A8);
  // static const Color shapeColor = Color(0XFF66CB79);
  static const Color textBoldColor = Color(0XFF044CAC);
  static const Color textBoldColor2 = Color(0XFF66CB79);
  static const Color salesBackgroundColor = Color(0XFF4A138C);
  static const Color salesCircleColor = Color(0XFFF23790);

  static const Color titleTextColor = const Color(0xff5a5d85);
  static const Color subTitleTextColor = const Color(0xff797878);

  static const Color bottonTitleTextColor = const Color(0xffd4d4ea);

  static const Color grey = Color(0xff9D99A7);
  static const Color darkgrey = Color(0xff625f6a);

  static const Color yellow = Color(0xfffbbd5c);

  static const Color orange = Color(0xfff96d5b);
  static const Color darkOrange = Color(0xfff46352);
  static const Color lightOrange = Color(0xfffa8e5c);
  static const Color lightOrange2 = Color(0xfff97d6d);

  static const Color purple = Color(0xff7a81dd);
  static const Color lightpurple = Color(0xff898edf);
  static const Color darkpurple = Color(0xff7178d3);
  static const Color extraDarkPurple = Color(0xff494c79);

  static const Color seeBlue = Color(0xff73d4dd);
  static const Color darkseeBlue = Color(0xff63c4cf);
  static const Color lightseeBlue = Color(0xffb9e6fc);

  static const Color brighter = Color(0xff3754aa);
  static const Color Darker = Color(0xffffffff);
  static const Color black = Color(0xff040405);
  static const Color lightblack = Color(0xff3E404D);
  static const Color lightGrey = Color(0xffDFE7DD);
  static const Color darkBlue2 = Color(0xff13165A);
  static const Color lightBlue = Color(0xff203387);
}
