import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  final Color buttonTextColor;
  const CalculatorButton({
    Key? key,
    required this.buttonText,
    this.buttonTextColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 32,
          color: buttonTextColor,
        ),
      ),
    );
  }
}
