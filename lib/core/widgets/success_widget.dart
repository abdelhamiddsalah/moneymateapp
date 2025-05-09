import 'package:flutter/material.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.05,
            vertical: screenSize.height * 0.02,
          ),
          width: double.infinity,
          height: screenSize.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesSuccess,
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 0.4,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: screenSize.height * 0.03),
                    Text(
                      'You are set!',
                      style: Textstyles.textbutton.copyWith(
                        fontSize: screenSize.width * 0.06,
                        fontWeight: FontWeight.w600,
                        color: ProjectColors.thirdColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              // Button at the bottom of the screen
              Padding(
                padding: EdgeInsets.only(bottom: screenSize.height * 0.05),
                child: CustomButton(text: 'Done'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}