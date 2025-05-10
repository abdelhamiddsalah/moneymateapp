import 'package:flutter/material.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class SendEmailWidget extends StatelessWidget {
  const SendEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final Size screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.05,
              vertical: screenSize.height * 0.02,
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenSize.height * 0.1),
                Image.asset(
                  Assets.imagesSendemail,
                  height: screenSize.height * 0.25,
                  width: screenSize.width * 0.6,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: screenSize.height * 0.05),
                Text(
                  'Your email is on the way',
                  style: Textstyles.textbutton.copyWith(
                    fontSize: screenSize.width * 0.06,
                    fontWeight: FontWeight.w600,
                    color: ProjectColors.thirdColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenSize.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
                  child: Text(
                    'Check your email test@test.com and follow the instructions to reset your password',
                    style: Textstyles.textbutton.copyWith(
                      fontSize: screenSize.width * 0.04,
                      fontWeight: FontWeight.w500,
                      color: ProjectColors.thirdColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }


}