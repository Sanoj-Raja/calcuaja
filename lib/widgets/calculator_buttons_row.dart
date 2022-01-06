import 'package:flutter/material.dart';
import 'calculator_button.dart';

class CalculatorButtonsRow extends StatelessWidget {
  final String firstButtonText;
  final String secondButtonText;
  final String thirdButtonText;
  final String forthButtonText;

  const CalculatorButtonsRow({
    Key? key,
    required this.firstButtonText,
    required this.secondButtonText,
    required this.thirdButtonText,
    required this.forthButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CalculatorButton(
            buttonText: firstButtonText,
          ),
          CalculatorButton(
            buttonText: secondButtonText,
          ),
          CalculatorButton(
            buttonText: thirdButtonText,
          ),
          CalculatorButton(
            buttonText: forthButtonText,
            buttonTextColor: Colors.teal.shade300,
          ),
        ],
      ),
    );
  }
}
