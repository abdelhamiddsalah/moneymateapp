import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
           Assets.imagesIconsgoogle, // تأكد أن الصورة هنا داخل مجلد assets
            height: 30.h,
            width: 30.h,
          ),
          const SizedBox(width: 16),
           Text(
            'Sign Up with Google',
            style: Textstyles.text16.copyWith(
           
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
