import 'package:flutter/material.dart';
import 'package:task/core/global/theme/light/light_theme_data.dart';
import 'package:task/core/icons/custom_icons.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/app_strings.dart';
import 'package:task/features/dashboard/presentation/components/default_button.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashbaord_colors.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';
import 'package:task/features/dashboard/presentation/screens/views/card_page_view.dart';
import 'package:task/features/dashboard/presentation/screens/views/category_view.dart';
import 'package:task/features/dashboard/presentation/screens/views/order_view.dart';
import 'package:task/features/dashboard/presentation/screens/views/service_view.dart';

class AppConstance {
  static const clappingHandsSvg = "assets/images/clappingHand.png";
  static const manHoldingBuilding = "assets/images/manHoldingBuilding.png";

  static const defaultUserImageUrl =
      "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?w=740&t=st=1698870380~exp=1698870980~hmac=a7bd3a3c0ff243fdd01ef12877aa15ae74ded19fd7ab7e8279dc427d93ddc295";
  static const bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.home), label: AppString.bottomNavBarHome),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.dashboard_customize),
        label: AppString.bottomNavBarAssets),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.support_agent),
        label: AppString.bottomNavBarSupport),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.person), label: AppString.bottomNavBarProfile),
  ];

  static const pageViewChildren = [
    CardPageView(),
    CardPageView(),
    CardPageView()
  ];

  static List<Widget> tapBarTabs = [
    defaultButton(
      function: () {},
      text: DashboardString.categories,
    ),
    defaultButton(
        function: () {},
        text: DashboardString.services,
        background: AppColors.semiActiveTapBarColor),
    defaultButton(function: () {}, text: DashboardString.order),
  ];

  static const tapBarView = [CategoryView(), ServiceView(), OrderView()];

  static TextStyle? categoryItemsTextStyle = getOutfitFontStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontColor: DashboardColors.categoriesItemsDescriptionTextColor);

  static List<Widget> categoryListView = [
    ListTile(
      title: Text(
        DashboardString.constructions,
        style: categoryItemsTextStyle,
      ),
      trailing: const Icon(Icons.arrow_forward,
          size: 24, color: DashboardColors.categoriesItemsGoIconColor),
      leading: const Icon(CustomIcons.constructions,
          color: DashboardColors.categoriesIconsColor, size: 24),
    ),
    ListTile(
      title: Text(
        DashboardString.insurances,
        style: categoryItemsTextStyle,
      ),
      trailing: const Icon(Icons.arrow_forward,
          size: 24, color: DashboardColors.categoriesItemsGoIconColor),
      leading: const Icon(CustomIcons.insurances,
          color: DashboardColors.categoriesIconsColor, size: 24),
    ),
    ListTile(
      title: Text(
        DashboardString.legal,
        style: categoryItemsTextStyle,
      ),
      trailing: const Icon(Icons.arrow_forward,
          size: 24, color: DashboardColors.categoriesItemsGoIconColor),
      leading: const Icon(CustomIcons.legal,
          color: DashboardColors.categoriesIconsColor, size: 24),
    ),
    ListTile(
      title: Text(
        DashboardString.buyAndSell,
        style: categoryItemsTextStyle,
      ),
      trailing: const Icon(Icons.arrow_forward,
          size: 24, color: DashboardColors.categoriesItemsGoIconColor),
      leading: const Icon(CustomIcons.shop,
          color: DashboardColors.categoriesIconsColor, size: 24),
    ),
    ListTile(
      title: Text(
        DashboardString.accountingServices,
        style: categoryItemsTextStyle,
      ),
      trailing: const Icon(Icons.arrow_forward,
          size: 24, color: DashboardColors.categoriesItemsGoIconColor),
      leading: const Icon(CustomIcons.accounting,
          color: DashboardColors.categoriesIconsColor, size: 24),
    ),
  ];
}
