import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';

class CustomRowAndText extends StatefulWidget {
  const CustomRowAndText({
    super.key,
  
  });

  
  @override
  State<CustomRowAndText> createState() => _CustomRowAndTextState();
}

class _CustomRowAndTextState extends State<CustomRowAndText> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     Checkbox(
  value: isChecked,
  onChanged: (v) {
    setState(() => isChecked = v!);
  },
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
  side: const BorderSide(color: ProjectColors.primaryColor, width: 2),
  activeColor: ProjectColors.primaryColor,
  checkColor: Colors.white,
  visualDensity: const VisualDensity(horizontal: -4, vertical: -4), // أصغر
),   const SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: "By signing up, you agree to the ",
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "Terms of Service and Privacy Policy",
                  style: const TextStyle(
                    color: ProjectColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                    },
                ),
               
                
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}