import 'package:flutter/material.dart';
import 'package:moneymateapp/features/auth/features/login/presentation/widgets/body_login_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Login',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      body: BodyLoginView(),
    );
  }
}
