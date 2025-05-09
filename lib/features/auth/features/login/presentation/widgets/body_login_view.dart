import 'package:flutter/material.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';
import 'package:moneymateapp/core/widgets/custom_textformfiled.dart';

class BodyLoginView extends StatelessWidget {
  const BodyLoginView({super.key});

  @override
 Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 30,
        children: [
          CustomTextFormField(hintText: 'Email'),
          CustomTextFormField(
            hintText: 'Password',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.visibility_outlined, color: Colors.grey),
            ),
          ),
          CustomButton(text: 'Login', ),
        ],
      ),
    );
  }
}
