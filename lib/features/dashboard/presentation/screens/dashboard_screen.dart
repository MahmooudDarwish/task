import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/dashboard/presentation/controller/dashboard_bloc.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/features/dashboard/presentation/screens/views/card_page_view.dart';

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
    return BlocBuilder<DashboardBloc, DashboardScreenState>(
      builder: (context, state) {
        return Scaffold(
            drawer: const Drawer(),
            appBar: AppBar(
              title: const Text(DashboardString.appBarHeader),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: AppConstance.bottomNavBarItems,
              currentIndex: state.selectedBottomNavBatItem,
              onTap: (value) {
                sl<DashboardBloc>().add(
                    ChangeBottomNavBarItem(selectedBottomNavBatItem: value));
              },
            ),
            body: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 12, bottom: 16),
                child: Column(
                    children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 14,
                        backgroundImage:
                            NetworkImage(AppConstance.defaultUserImageUrl),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 2),
                        child: Text(
                          DashboardString.welcomeUser("Ahmed"),
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Image.asset(
                        AppConstance.clappingHandsSvg,
                        width: 20,
                        height: 20,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            DashboardString.welcomeMessageHeader,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 4),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            DashboardString.welcomeMessageBody,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 152,
                      padding: const EdgeInsets.only(left: 8, top: 8, bottom: 12),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: AppColors.cardColor),
                      child: PageView(
                        controller: sl<DashboardBloc>().pageViewController,
                        children: AppConstance.pageViewChildren,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, bottom: 16),
                    child: SmoothPageIndicator(
                        controller: sl<DashboardBloc>().pageViewController,
                        count: AppConstance.pageViewChildren.length,
                    effect:  const ExpandingDotsEffect(
                      activeDotColor: AppColors.activeDotColor,
                      dotColor: AppColors.inActiveDotColor,
                      dotHeight: 8,
                      dotWidth: 8,
                      expansionFactor: 4

                    ),),
                  ),
                ])));
      },
    );
  }
}
