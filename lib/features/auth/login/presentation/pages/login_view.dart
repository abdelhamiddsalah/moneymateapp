import 'package:flutter/material.dart';
import 'package:moneymateapp/core/widgets/custom_appbar.dart';
import 'package:moneymateapp/features/auth/login/presentation/widgets/body_login_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Login",centerTitle: true,backgroundColor: Colors.white,leadingIcon:Icons.arrow_back_rounded,),
      backgroundColor: Colors.white,
      body: BodyLoginView(),
    );
  }
}
