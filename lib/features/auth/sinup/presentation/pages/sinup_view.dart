import 'package:flutter/material.dart';
import 'package:moneymateapp/core/widgets/custom_appbar.dart';
import 'package:moneymateapp/features/auth/sinup/presentation/widgets/boby_sinup_view.dart';

class SinupView extends StatelessWidget {
  const SinupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: CustomAppBar(title: "Sin Up",centerTitle: true,backgroundColor: Colors.white,leadingIcon:Icons.arrow_back_rounded,),
 backgroundColor: Colors.white,
      body: BobySinupView(),
    );
  }
}