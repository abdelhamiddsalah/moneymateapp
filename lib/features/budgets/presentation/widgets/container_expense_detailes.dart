import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/extention/extention.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';
import 'package:moneymateapp/core/widgets/custom_textformfiled.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/button_attachment.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/drowpdown_month.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/ios_toggle_switch.dart';

class ContainerExpenseDetailes extends StatelessWidget {
  const ContainerExpenseDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 10),
            DropdownBudget(
              children: {
                'shopping1': Row(
                  children: [
                    Image.asset(Assets.imagesFrame1, height: 25.h, width: 25.h),
                    const SizedBox(width: 8),
                    Text('Shopping', style: Textstyles.text14),
                  ],
                ),
                'shopping2': Row(
                  children: [
                    Image.asset(Assets.imagesFrame1, height: 25.h, width: 25.h),
                    const SizedBox(width: 8),
                    Text('Groceries', style: Textstyles.text14),
                  ],
                ),
              },
            ),
            const SizedBox(height: 15),
            const CustomTextFormField(hintText: 'Description'),
            const SizedBox(height: 15),
            DropdownBudget(
              children: {
                '1': Text('Budget', style: Textstyles.text14),
                '2': Text('Groceries', style: Textstyles.text14),
              },
            ),
            const SizedBox(height: 15),
            const ButtonAttachment(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Repeat',
                      style: Textstyles.text14.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Repeat transaction',
                      style: Textstyles.text8.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ProjectColors.greyColor,
                      ),
                    ),
                  ],
                ),
                const IosToggleSwitch(),
              ],
            ),
            const SizedBox(height: 15),
            const CustomButton(text: 'Add'),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
