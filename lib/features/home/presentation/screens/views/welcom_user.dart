import 'package:flutter/material.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 14,
            backgroundImage:
            NetworkImage(AppConstance.defaultUserImageUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 2),
            child: Text(
              HomeString.welcomeUser("Ahmed"),
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            ),
          ),
          Image.asset(
            AppConstance.clappingHandsImage,
            width: 20,
            height: 20,
          )
        ],
      ),
    );
  }
}
