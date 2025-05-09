import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/core/widgets/custom_appbar.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';
import 'package:moneymateapp/core/widgets/custom_textformfiled.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: ProjectColors.secondaryColor,
      appBar: CustomAppBar(title: 'Forget Password',leadingIcon: Icons.arrow_back_rounded,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
              children: [
                // Responsive text size based on screen width
                Text(
                  'Don’t worry.\nEnter your email and we’ll \nsend you a link to reset your \n password.',
                  style: Textstyles.textbutton.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: screenSize.width < 360 ? 20 : 24,
                    color: ProjectColors.thirdColor,
                  ),
                  textAlign: TextAlign.left, // Explicit left alignment
                ),
                SizedBox(height: screenSize.height * 0.06), // Responsive spacing
                CustomTextFormField(hintText: 'Email'),
                SizedBox(height: screenSize.height * 0.05), // Responsive spacing
                // Full width button
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(text: 'Continue'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}