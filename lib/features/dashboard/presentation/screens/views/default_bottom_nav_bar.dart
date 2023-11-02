import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/dashboard/presentation/controller/dashboard_bloc.dart';

class DefaultBottomNavBar extends StatelessWidget {
  const DefaultBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardScreenState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: AppConstance.bottomNavBarItems,
          currentIndex: state.selectedBottomNavBatItem,
          onTap: (value) {
            sl<DashboardBloc>()
                .add(ChangeBottomNavBarItem(selectedBottomNavBatItem: value));
          },
        );
      },
    );
  }
}
