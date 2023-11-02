import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/dashboard/presentation/controller/dashboard_bloc.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';
import 'package:task/features/dashboard/presentation/screens/views/card_slider.dart';
import 'package:task/features/dashboard/presentation/screens/views/default_bottom_nav_bar.dart';
import 'package:task/features/dashboard/presentation/screens/views/tab_bar_items.dart';
import 'package:task/features/dashboard/presentation/screens/views/tab_bar_page_view.dart';
import 'package:task/features/dashboard/presentation/screens/views/welcom_user.dart';
import 'package:task/features/dashboard/presentation/screens/views/wlecome_message.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DashboardBloc>(),
      child: const DashboardScreenView(),
    );
  }
}

class DashboardScreenView extends StatelessWidget {
  const DashboardScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text(DashboardString.appBarHeader),
        ),
        bottomNavigationBar: const DefaultBottomNavBar(),
        body: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 12, bottom: 16),
            child: Column(children: [
              const WelcomeUser(),
              const WelcomeMessage(),
              const SizedBox(
                height: 16,
              ),
              const CardSlider(),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1, color: AppColors.tapBarBorderColor),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TabBarItems(),
                        ),
                      ),
                      const TabBarPageView(),
                    ],
                  ),
                ),
              )
            ])));
  }
}
