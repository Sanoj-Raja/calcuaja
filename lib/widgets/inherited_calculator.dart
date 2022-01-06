import 'package:flutter/material.dart';

class InheritedCalculator extends InheritedWidget {
  final void Function(String) onCalculatorButtonPressed;

  const InheritedCalculator({
    Key? key,
    required this.onCalculatorButtonPressed,
    required Widget child,
  }) : super(key: key, child: child);

  static InheritedCalculator? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCalculator>();
  }

  @override
  bool updateShouldNotify(InheritedCalculator oldWidget) {
    return true;
  }
}
