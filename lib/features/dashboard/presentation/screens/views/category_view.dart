import 'package:flutter/material.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashbaord_colors.dart';
import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(DashboardString.categoriesView,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: DashboardColors.categoriesViewTextColor)),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      DashboardString.seeAll,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: DashboardColors.seeAllTextColor,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return AppConstance.categoryListView[index];
              },
              itemCount: AppConstance.categoryListView.length,
            ),
          ),
        ],
      ),
    );
  }
}
