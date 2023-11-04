import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/home/presentation/screens/views/tab_bar_items.dart';
import 'package:task/features/home/presentation/screens/views/tab_bar_page_view.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.0.h),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.0.h),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                        width: 1.w, color: AppColors.tapBarBorderColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: const TabBarItems(),
                  ),
                ),
              ),
              const TabBarPageView(),
            ],
          ),
        ),
      ),
    );

  }
}
