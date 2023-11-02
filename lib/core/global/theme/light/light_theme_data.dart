import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashbaord_colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getThemeDataLight() => ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColors.bottomNavBarActiveItemColor,
        unselectedItemColor: AppColors.bottomNavBarDisableItemColor),
    appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColors.drawerIconColor,
        ),
        color: AppColors.appBarColor,
        centerTitle: true,
        titleTextStyle: getOutfitFontStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            fontColor: DashboardColors.appBarHeaderTextColor)));


TextStyle getOutfitFontStyle(
    {required FontWeight fontWeight,
    required double fontSize,
    required Color fontColor}) {
  return GoogleFonts.outfit(
      fontWeight: fontWeight, fontSize: fontSize, color: fontColor);
}
