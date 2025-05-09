import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class RowProfileInHome extends StatelessWidget {
  const RowProfileInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.imagesOneprofile,
          height: 50.h,
          width: 50.h,
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome back ,", style: Textstyles.text16),
            Text(
              "John Doe",
              style: Textstyles.text16.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    );
  }
}
