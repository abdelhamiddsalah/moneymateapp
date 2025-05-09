import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/widgets/custom_appbar.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';
import 'package:moneymateapp/core/widgets/custom_textformfiled.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: ProjectColors.secondaryColor,
      appBar: CustomAppBar(title: 'Reset Password',leadingIcon: Icons.arrow_back_rounded,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
              children: [
                CustomTextFormField(hintText: 'New Password'),
                SizedBox(height: screenSize.height * 0.03), 
                CustomTextFormField(hintText: 'Retype New Password'),
                SizedBox(height: screenSize.height * 0.05),
                CustomButton(text: 'Continue'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}