import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymateapp/core/routing/routes.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class CustomLoginAndSinup extends StatelessWidget {
  const CustomLoginAndSinup({
    super.key,
    required this.text,
    required this.navigation, this.onTap,
  });
  final String text;
  final String navigation;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
        text  ,
          style: Textstyles.text16.copyWith(color: Colors.grey),
        ),

        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(Routes.signup);
          },
          child: Text(
            navigation,
            style: Textstyles.text18.copyWith(
              color: ProjectColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
