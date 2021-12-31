import 'package:calcuaja/services/base_calculator_helper.dart';

class CalculatorHelper implements BaseCalculatorHelper {
  @override
  double add({required double num1, required double num2}) => num1 + num2;

  @override
  double divide({required double num1, required double num2}) => num1 / num2;

  @override
  double multiply({required double num1, required double num2}) => num1 * num2;

  @override
  double minus({required double num1, required double num2}) => num1 - num2;
}
