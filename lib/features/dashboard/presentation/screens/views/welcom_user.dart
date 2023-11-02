import 'package:flutter/material.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            style: Theme
                .of(context)
                .textTheme
                .titleLarge,
          ),
        ),
        Image.asset(
          AppConstance.clappingHandsSvg,
          width: 20,
          height: 20,
        )
      ],
    );
  }
}
