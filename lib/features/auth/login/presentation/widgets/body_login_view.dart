import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymateapp/core/routing/routes.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';
import 'package:moneymateapp/core/widgets/custom_login_and_sinup.dart';
import 'package:moneymateapp/core/widgets/custom_textformfiled.dart';

class BodyLoginView extends StatelessWidget {
  const BodyLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 30.h,
          children: [
            CustomTextFormField(hintText: 'Email'),
            CustomTextFormField(
              hintText: 'Password',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_outlined, color: Colors.grey),
              ),
            ),
            CustomButton(onTap: () => GoRouter.of(context).push(Routes.home),text: 'Login'),
            Text(
              'Forgot Password?',
              style: Textstyles.text18.copyWith(
                color: ProjectColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),

            CustomLoginAndSinup(text: "Don't have an account?", navigation: 'Sign Up', onTap: () {
              GoRouter.of(context).push(Routes.signup);
            },),
          ],
        ),
      ),
    );
  }
}
