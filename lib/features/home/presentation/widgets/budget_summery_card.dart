import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class BudgetSummaryCard extends StatelessWidget {
  const BudgetSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Total Spent®',
          style: Textstyles.text18.copyWith(
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'EGP 6,348',
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Left to spend', style: Textstyles.text14),
                SizedBox(height: 4.h),
                Text(
                  'EGP 1,652',
                  style: Textstyles.text16.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text('Monthly budget', style: Textstyles.text14),
                SizedBox(height: 4.h),
                Text(
                  'EGP 8,000',
                  style: Textstyles.text16.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
