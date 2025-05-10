import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/column_text_salay_and_budget.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/container_expense_detailes.dart';

class ExpenceViewBody extends StatelessWidget {
  const ExpenceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          ColumnTextSalayAndBudget(
            text: 'How much?',
            amount: '20000EGP',
          ),
          SizedBox(height: 50.h),
          ContainerExpenseDetailes(),
        ],
      ),
    );
  }
}