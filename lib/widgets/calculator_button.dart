import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  // final dynamic buttonPressFunction;
  final String buttonString;
  const CalculatorButton({
    Key? key,
    required this.buttonString,
    // this.buttonPressFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.height / 5,
      child: Center(
        child: Text(
          buttonString,
          style: const TextStyle(
            fontSize: 60,
          ),
        ),
      ),
      decoration: const BoxDecoration(
        color: Colors.orange,
      ),
    );
  }
}
