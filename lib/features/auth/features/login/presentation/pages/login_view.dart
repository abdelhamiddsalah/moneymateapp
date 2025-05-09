import 'package:flutter/material.dart';
import 'package:moneymateapp/core/widgets/custom_textformfiled.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          CustomTextFormField(hintText: 'hintText')
          ],
        ),
      ),
    );
  }
}