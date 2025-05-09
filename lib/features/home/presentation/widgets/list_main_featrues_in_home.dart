import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class ListMainFeatrueInHome extends StatelessWidget {
  const ListMainFeatrueInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45.h,
                  width: 45.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    Assets.imagesFrame1,
                    height: 40.h,
                    width: 40.h,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Scan Receipt',
                  style:
                      Textstyles.text8.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
