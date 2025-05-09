import 'package:flutter/material.dart';
import 'package:moneymateapp/core/extention/extention.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color, this.textcolor});
  final String text;
  final Color? color;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    double height = context.height;
    double width = context.width;
    return Container(
       width:  width ,
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:color ?? ProjectColors.primaryColor
              ),
      child:  Center(
        child: Text(text, style:  Textstyles.textbutton.copyWith(
          color: textcolor?? ProjectColors.secondaryColor
        ),),
      ),
    );
  }
}