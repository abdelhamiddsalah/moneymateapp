import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/column_text_salay_and_budget.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/container_percentage_budget.dart';


class BudgetsViewBody extends StatelessWidget {
  const BudgetsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          ColumnTextSalayAndBudget(
            text: 'What is your Salary? ',
            amount: '20000EGP',
          ),
          ColumnTextSalayAndBudget(
            text: 'How much do yo want to spend? ',
            amount: '20000EGP',
          ),
          SizedBox(height: 20.h),
          ContainerPercentageBudget(),
        ],
      ),
    );
  }
}

