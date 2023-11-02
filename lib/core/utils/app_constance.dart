import 'package:flutter/material.dart';
import 'package:task/core/icons/custom_icons_icons.dart';
import 'package:task/core/utils/app_strings.dart';

class AppConstance {
  static const clappingHandsSvg = "assets/images/welcome.svg";
  static const defaultUserImageUrl =
      "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?w=740&t=st=1698870380~exp=1698870980~hmac=a7bd3a3c0ff243fdd01ef12877aa15ae74ded19fd7ab7e8279dc427d93ddc295";
  static const bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: Icon(Custom_icons.home), label: AppString.bottomNavBarHome),
    BottomNavigationBarItem(
        icon: Icon(Custom_icons.dashboard_customize),
        label: AppString.bottomNavBarAssets),
    BottomNavigationBarItem(
        icon: Icon(Custom_icons.support_agent),
        label: AppString.bottomNavBarSupport),
    BottomNavigationBarItem(
        icon: Icon(Custom_icons.person), label: AppString.bottomNavBarProfile),
  ];
}
