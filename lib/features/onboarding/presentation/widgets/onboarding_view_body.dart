import 'package:flutter/material.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final horizontalPadding = screenSize.width * 0.08;
    
    return Scaffold(
      backgroundColor: ProjectColors.secondaryColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesPhotoinonboarding,
                        width: constraints.maxWidth * 0.8,
                        fit: BoxFit.contain,
                      ),
                      
                      SizedBox(height: constraints.maxHeight * 0.03),
                      Text(
                        'Gain total control \nof your money',
                        textAlign: TextAlign.center,
                        style: Textstyles.textbutton.copyWith(
                          color: ProjectColors.thirdColor,
                          fontSize: screenSize.width < 360 ? 28 : 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.02),
                      Text(
                        'Become your own money manager \nand make every cent count',
                        textAlign: TextAlign.center,
                        style: Textstyles.textbutton.copyWith(
                          color: ProjectColors.greyColor,
                          fontSize: screenSize.width < 360 ? 14 : 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.05),
                      CustomButton(text: 'Sign Up'),
                      SizedBox(height: constraints.maxHeight * 0.02),
                      CustomButton(
                        text: 'Login',
                        textcolor: ProjectColors.primaryColor,
                        color: ProjectColors.primaryColor.withOpacity(0.2),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.02),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}