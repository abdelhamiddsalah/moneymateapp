import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class DetailesTranscation extends StatelessWidget {
  const DetailesTranscation({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Textstyles.text14.copyWith(
            fontWeight: FontWeight.w500,
            color: ProjectColors.greyColor,
          ),
        ),
        Text(
         value,
          style: Textstyles.text14.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
