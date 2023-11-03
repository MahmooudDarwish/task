import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            height: 152,
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.cardColor),
            child: PageView(
              controller: sl<HomeBloc>().pageViewController,
              children: AppConstance.pageViewChildren,
            ),
          ),
        ),
        SmoothPageIndicator(
          controller: sl<HomeBloc>().pageViewController,
          count: AppConstance.pageViewChildren.length,
          effect: const ExpandingDotsEffect(
              activeDotColor: AppColors.activeDotColor,
              dotColor: AppColors.inActiveDotColor,
              dotHeight: 8,
              dotWidth: 8,
              expansionFactor: 4),
        )
      ],
    );
  }
}
