import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color, this.textcolor});
  final String text;
  final Color? color;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
       width:  width * 0.8,
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:color ?? ProjectColors.primaryColor
              ),
      child:  Text(text, style:  Textstyles.textbutton.copyWith(
        color: textcolor?? ProjectColors.secondaryColor
      ),),
    );
  }
}