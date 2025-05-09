import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({ this.validator, this.controller,super.key,required this.hintText});
 final String? Function(String?)? validator ;
 final TextEditingController? controller;
 final String hintText;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      
      validator:validator ,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 16,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
          ),
          
        ) ,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
          
             color: Colors.grey,
            width: 2,
          ),
          
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
             color: Colors.grey.shade300,
            width: 1,
          ),
          
        )
      ),
    );
  }
}