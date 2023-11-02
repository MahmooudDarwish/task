import 'package:flutter/material.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/dashboard/presentation/components/default_button.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DashboardString.cardMessageHeader,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16,),
              defaultButton(
                height: 32,
                width: 128,
                function: () {},
                text: DashboardString.order,
                textStyle: Theme.of(context).textTheme.labelLarge,
                radius: 360,
              )
            ],
          ),
        ),
        Expanded(child: Image.asset(AppConstance.manHoldingBuilding))
      ],
    );
  }
}
