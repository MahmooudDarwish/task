import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/enums.dart';
import 'package:task/features/dashboard/presentation/components/default_button.dart';
import 'package:task/features/dashboard/presentation/controller/dashboard_bloc.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';

class TabBarItems extends StatelessWidget {
  const TabBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardScreenState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: defaultButton(
                    radius: 360,
                    background: state.selectedTabBarItem ==
                            TabBarItemType.categories
                        ? AppColors.activeTapBarColor
                        : AppColors.inActiveTapBarColor,
                    textStyle:
                        state.selectedTabBarItem == TabBarItemType.categories
                            ? Theme.of(context).textTheme.labelMedium
                            : Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.inActiveTapBarHintTextColor),
                    function: () {
                      sl<DashboardBloc>().add(const TabBarItemsClickedEvent(
                          tabBarItemType: TabBarItemType.categories));
                    },
                    text: DashboardString.categories,
                    height: 30)),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: defaultButton(
                    radius: 360,
                    background:
                        state.selectedTabBarItem == TabBarItemType.services
                            ? AppColors.activeTapBarColor
                            : AppColors.semiActiveTapBarColor,
                    textStyle:
                        state.selectedTabBarItem == TabBarItemType.services
                            ? Theme.of(context).textTheme.labelMedium
                            : Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.semiActiveTapBarHintTextColor),
                    function: () {
                      sl<DashboardBloc>().add(const TabBarItemsClickedEvent(
                          tabBarItemType: TabBarItemType.services));
                    },
                    text: DashboardString.services,
                    height: 30)),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: defaultButton(
                    radius: 360,
                    function: () {
                      sl<DashboardBloc>().add(const TabBarItemsClickedEvent(
                          tabBarItemType: TabBarItemType.orders));
                    },
                    text: DashboardString.getOrders(0),
                    background:
                        state.selectedTabBarItem == TabBarItemType.orders
                            ? AppColors.activeTapBarColor
                            : AppColors.inActiveTapBarColor,
                    textStyle: state.selectedTabBarItem == TabBarItemType.orders
                        ? Theme.of(context).textTheme.labelMedium
                        : Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: AppColors.inActiveTapBarHintTextColor),
                    height: 30)),
          ],
        );
      },
    );
  }
}
