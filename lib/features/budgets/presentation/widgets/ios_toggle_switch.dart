import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';

class IosToggleSwitch extends StatefulWidget {
  const IosToggleSwitch({super.key});

  @override
  State<IosToggleSwitch> createState() => _IosToggleSwitchState();
}

class _IosToggleSwitchState extends State<IosToggleSwitch> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: isOn,
      onChanged: (value) {
        setState(() {
          isOn = value;
        });
      },
      activeColor: ProjectColors.primaryColor,
    );
  }
}


