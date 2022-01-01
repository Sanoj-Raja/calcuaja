import 'package:flutter/material.dart';
import 'calculator_button.dart';
import 'gap_widget.dart';

class CalculatorButtonsRow extends StatelessWidget {
  final String firstRowText;
  final String secondRowText;
  final String thirdRowText;
  final String finalRowText;

  const CalculatorButtonsRow({
    Key? key,
    required this.firstRowText,
    required this.secondRowText,
    required this.thirdRowText,
    required this.finalRowText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CalculatorButton(
            buttonText: firstRowText,
          ),
        ),
        const HorizontalGap(),
        Expanded(
          child: CalculatorButton(
            buttonText: secondRowText,
          ),
        ),
        const HorizontalGap(),
        Expanded(
          child: CalculatorButton(
            buttonText: thirdRowText,
          ),
        ),
        const HorizontalGap(),
        Expanded(
          child: CalculatorButton(
            buttonText: finalRowText,
            buttonTextColor: Colors.teal.shade300,
          ),
        ),
      ],
    );
  }
}
