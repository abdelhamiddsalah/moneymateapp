import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/expence_view_body.dart';

class ExpenseView extends StatelessWidget {
  const ExpenseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          " Expense",
          style:
              Textstyles.text18
                .copyWith(fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: ProjectColors.primaryColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      
      ),
      backgroundColor: ProjectColors.primaryColor,
     body: ExpenceViewBody(),
    );
  }
}