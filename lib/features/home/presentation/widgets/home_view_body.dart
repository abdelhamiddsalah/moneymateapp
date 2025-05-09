import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:moneymateapp/features/home/presentation/widgets/home_header_container.dart';
import 'package:moneymateapp/features/home/presentation/widgets/second_part_in_home.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeaderContainer(),
        SizedBox(height: 20.h),
        SecondPartInHome()

      ],
    );
  }
}

