import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/core/extention/extention.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/drowpdown_month.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/ios_toggle_switch.dart';
import 'package:moneymateapp/features/budgets/presentation/widgets/precentage_slider.dart';

class ContainerPercentageBudget extends StatelessWidget {
  const ContainerPercentageBudget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: context.height * 0.48,
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
    
          spacing: 15,
          children: [
          SizedBox(),
            DropdownBudget(children: {
              'January': Text('January', style: Textstyles.text14),
              'February': Text('February', style: Textstyles.text14),
              'March': Text('March', style: Textstyles.text14),
              'April': Text('April', style: Textstyles.text14),
              'May': Text('May', style: Textstyles.text14),
            },),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Receive Alert',
                      style: Textstyles.text14.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Receive alert when it reaches\n some point.',
                      style: Textstyles.text8.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ProjectColors.greyColor,
                      ),
                    ),
                  ],
                ),
                IosToggleSwitch(),
              ],
            ),
            PercentageSlider(),
            CustomButton(text: 'Done'),
            SizedBox()
          ],
        ),
      ),
    );
  }
}





