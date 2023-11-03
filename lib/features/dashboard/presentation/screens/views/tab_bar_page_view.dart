import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/enums.dart';
import 'package:task/features/dashboard/presentation/controller/dashboard_bloc.dart';
import 'package:task/features/dashboard/presentation/screens/views/category_view.dart';
import 'package:task/features/dashboard/presentation/screens/views/no_list_found.dart';
import 'package:task/features/dashboard/presentation/screens/views/order_view.dart';
import 'package:task/features/dashboard/presentation/screens/views/service_view.dart';

class TabBarPageView extends StatelessWidget {
  const TabBarPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardScreenState>(
      builder: (context, state) {
        return ConditionalBuilder(
          condition: _shouldShowView(state),
          builder: (context) {
            return _buildSelectedView(state);
          },
          fallback: (context) => const NoListFound(),
        );
      },
    );
  }

  bool _shouldShowView(DashboardScreenState state) {
    switch (state.selectedTabBarItem) {
      case TabBarItemType.categories:
        return state.categoryList.isNotEmpty;
      case TabBarItemType.services:
        return state.serviceList.isNotEmpty;
      case TabBarItemType.orders:
        return state.ordersList.isNotEmpty;
      default:
        return false;
    }
  }

  Widget _buildSelectedView(DashboardScreenState state) {
    switch (state.selectedTabBarItem) {
      case TabBarItemType.categories:
        return const CategoryView();
      case TabBarItemType.services:
        return const ServiceView();
      case TabBarItemType.orders:
        return const OrderView();
      default:
        return Container();
    }
  }
}
