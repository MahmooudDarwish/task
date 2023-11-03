import 'package:flutter/material.dart';
import 'package:task/core/global/theme/light/light_theme_data.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/home/presentation/screens/utils/home_colors.dart';

Widget defaultListTile(
    {required String title,
    IconData trailingIcon = Icons.arrow_forward,
    required IconData leadingIcon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      decoration: BoxDecoration(
          color: AppColors.tapBarItemColor, // Your desired background color
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
                color: AppColors.tapBarItemShadowColor,
                blurRadius: 3,
                offset: Offset(0, 2),
                spreadRadius: 0),
          ]),
      child: ListTile(
        title: Text(
          title,
          style: getOutfitFontStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontColor: HomeColors.categoriesItemsDescriptionTextColor),
        ),
        trailing: Icon(trailingIcon,
            size: 24, color: HomeColors.categoriesItemsGoIconColor),
        leading: Icon(leadingIcon,
            color: HomeColors.categoriesIconsColor, size: 24),
      ),
    ),
  );
}
