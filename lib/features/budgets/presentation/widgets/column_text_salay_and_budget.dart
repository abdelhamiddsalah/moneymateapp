import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class ColumnTextSalayAndBudget extends StatelessWidget {
  const ColumnTextSalayAndBudget({
    super.key, required this.text, required this.amount,
  });
final String text ;
final String amount ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
              style:Textstyles.text18
                  .copyWith(fontWeight: FontWeight.w700, color: ProjectColors.secondaryColor)), 
                  Text(amount,
              style:Textstyles.text48
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
    );
  }
}