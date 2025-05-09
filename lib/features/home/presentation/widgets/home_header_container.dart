import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/features/home/presentation/widgets/budget_summery_card.dart';
import 'package:moneymateapp/features/home/presentation/widgets/list_main_featrues_in_home.dart';
import 'package:moneymateapp/features/home/presentation/widgets/row_profile_in_home.dart';

class HomeHeaderContainer extends StatelessWidget {
  const HomeHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ProjectColors.secondaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const RowProfileInHome(),
            SizedBox(height: 20.h),
            const BudgetSummaryCard(),
            SizedBox(height: 20.h),
            const ListMainFeatrueInHome(),
          ],
        ),
      ),
    );
  }
}

