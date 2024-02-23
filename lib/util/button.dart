// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final icon;
  final String number;
  final buttonSize;
  const MyButton(
      {super.key, this.icon, required this.number, this.buttonSize = 30.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: buttonSize,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(number),
        ],
      ),
    );
  }
}
