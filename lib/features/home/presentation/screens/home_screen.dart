import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/home/presentation/screens/views/card_slider.dart';
import 'package:task/features/home/presentation/screens/views/tab_bar_section.dart';
import 'package:task/features/home/presentation/screens/views/welcom_user.dart';
import 'package:task/features/home/presentation/screens/views/wlecome_message.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(left: 20.0.w, right: 20.w, top: 12.h),
            child: Column(children: [
              const WelcomeUser(),
              const WelcomeMessage(),
              SizedBox(
                height: 16.h,
              ),
              const CardSlider(),
              SizedBox(
                height: 16.h,
              ),
            ])),
        const TabBarSection(),
      ],
    );
  }
}
