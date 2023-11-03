import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';
import 'package:task/features/home/presentation/screens/views/card_slider.dart';
import 'package:task/features/home/presentation/screens/views/tab_bar_items.dart';
import 'package:task/features/home/presentation/screens/views/tab_bar_page_view.dart';
import 'package:task/features/home/presentation/screens/views/welcom_user.dart';
import 'package:task/features/home/presentation/screens/views/wlecome_message.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>(),
      child: const HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
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
                      ),
                      const TabBarPageView(),
                    ],
                  ),
                ),
              )
            ])));
  }
}
