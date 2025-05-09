import 'package:flutter/material.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(Assets.imagesPhotoinonboarding),
            SizedBox(height: 20,),
            CustomButton(text: 'Sign Up'),
          ],
        ),
      ),
    );
  }
}