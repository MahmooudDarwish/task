import 'package:flutter/material.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashbaord_colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getThemeDataLight() => ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(),
    appBarTheme: AppBarTheme(
      elevation: 0,
        iconTheme: const IconThemeData(
          color: DashBoardColors.drawerIconColor,
        ),
        color: DashBoardColors.appBarColor,
        centerTitle: true,
        titleTextStyle: getOutfitFontStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            fontColor: DashBoardColors.appBarHeaderTextColor)));




TextStyle getOutfitFontStyle(
    {required FontWeight fontWeight,
    required double fontSize,
    required Color fontColor}) {
  return GoogleFonts.outfit(
      fontWeight: fontWeight, fontSize: fontSize, color: fontColor);
}
