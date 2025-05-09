import 'package:flutter/material.dart';
import 'package:moneymateapp/features/auth/sinup/presentation/widgets/boby_sinup_view.dart';

class SinupView extends StatelessWidget {
  const SinupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Sign Up',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

      ),backgroundColor: Colors.white,
      body: BobySinupView(),
    );
  }
}