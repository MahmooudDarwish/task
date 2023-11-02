import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/dashboard/presentation/controller/dashboard_bloc.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';



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
              sl<DashboardBloc>()
                  .add(ChangeBottomNavBarItem(selectedBottomNavBatItem: value));
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          NetworkImage(AppConstance.defaultUserImageUrl),
                    ),
                    Text(DashboardString.welcomeUser("Ahmed")),
                   SvgPicture.asset(
                    AppConstance.clappingHandsSvg,
                    )

                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
