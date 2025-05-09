import 'package:flutter/material.dart';

import 'package:moneymateapp/features/home/presentation/widgets/home_header_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeaderContainer(),
      ],
    );
  }
}

