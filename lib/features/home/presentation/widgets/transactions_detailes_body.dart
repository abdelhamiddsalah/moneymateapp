import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';
import 'package:moneymateapp/features/home/presentation/widgets/row_detailes_transaction.dart';

class TransactionsDetailesBody extends StatelessWidget {
  const TransactionsDetailesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 300.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40.h,
                    width: 40.h,
                    decoration: BoxDecoration(
                      color: ProjectColors.secondaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      Assets.imagesTickCircle,
              
                      height: 30.h,
                      width: 30.h,
                    ),
                  ),
              
                  Text(
                    'transaction Receipt',
                    style: Textstyles.text18.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '169 EGP',
                    style: Textstyles.text18.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ProjectColors.primaryColor,
                    ),
                  ),
                  SizedBox(),
                  DetailesTranscation(title: 'Date', value: '01/01/2023'),
                  DetailesTranscation(title: 'amount', value: '169 EGP'),
                  DetailesTranscation(title: 'payment method', value: 'Cash'),
                  DetailesTranscation(title: 'payment time', value: '12:00 PM'),
                ],
              ),
            ),
          ),
       
       CustomButton(text: 'Back to Home')
        ],
      ),
    );
  }
}

