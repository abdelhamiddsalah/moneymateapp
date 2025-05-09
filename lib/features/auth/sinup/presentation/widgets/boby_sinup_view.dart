import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymateapp/core/routing/routes.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';
import 'package:moneymateapp/core/widgets/custom_login_and_sinup.dart';
import 'package:moneymateapp/core/widgets/custom_textformfiled.dart';
import 'package:moneymateapp/features/auth/sinup/presentation/widgets/button_google.dart';
import 'package:moneymateapp/features/auth/sinup/presentation/widgets/custom_row_and_text.dart';

class BobySinupView extends StatelessWidget {
  const BobySinupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 12.h,
          children: [
            CustomTextFormField(hintText: 'First name'),
            CustomTextFormField(hintText: 'Last name'),
            CustomTextFormField(hintText: 'Phone number'),
            CustomTextFormField(hintText: 'Email'),

            CustomTextFormField(
              hintText: 'Password',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_outlined, color: Colors.grey),
              ),
            ),
            CustomTextFormField(
              hintText: 'Confirm Password',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_outlined, color: Colors.grey),
              ),
            ),

            CustomRowAndText(),

            CustomButton(text: 'Sign Up'),
            Text("OR", style: Textstyles.text14.copyWith(color: Colors.grey)),

            ButtonGoogle(),
            CustomLoginAndSinup(text: 'Already have an account?', navigation: 'Login',onTap: () {
              GoRouter.of(context).push(Routes.login);
            },),
          ],
        ),
      ),
    );
  }
}

