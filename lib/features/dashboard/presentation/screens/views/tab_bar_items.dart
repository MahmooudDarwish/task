import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                    function: () {

                    },
                    text: DashboardString.categories,
                    height: 30)),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: defaultButton(
                    function: () {},
                    text: DashboardString.services,
                    height: 30)),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: defaultButton(
                    function: () {}, text: DashboardString.orders, height: 30)),
          ],
        );
      },
    );
  }
}
