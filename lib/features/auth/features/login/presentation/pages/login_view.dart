import 'package:flutter/material.dart';
import 'package:moneymateapp/features/auth/features/login/presentation/widgets/body_login_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body:BodyLoginView()
    
    );
  }
}