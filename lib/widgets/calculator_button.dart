import 'package:calcuaja/widgets/inherited_calculator.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonTextColor;

  const CalculatorButton({
    Key? key,
    required this.buttonText,
    this.buttonTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: InkWell(
          onTap: () {
            InheritedCalculator.of(context)!.onCalculatorButtonPressed(
              buttonText,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 30,
                color: buttonTextColor ?? Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
