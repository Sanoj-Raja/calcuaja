import 'package:calcuaja/constants/strings.dart';
import 'package:calcuaja/widgets/calculator_buttons_row.dart';
import 'package:calcuaja/widgets/gap.dart';
import 'package:calcuaja/widgets/inherited_calculator.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({Key? key}) : super(key: key);

  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  String _clickedTexts = '';

  void onCalculatorButtonPressed(String buttonText) {
    switch (buttonText) {
      case kClear:
        _clearClickedTexts();
        break;
      case kRemove:
        _removeText();
        break;
      case kEqual:
        _calculate();
        break;

      default:
        _addClickedText(buttonText);
    }
  }

  void _addClickedText(String textToAdd) {
    setState(
      () {
        if (_clickedTexts.isNotEmpty) {
          final String lastText = _clickedTexts.split('').last;
          if ((lastText == kPlus ||
                  lastText == kMinus ||
                  lastText == kMultiply ||
                  lastText == kDivide ||
                  lastText == kPercent) &&
              (textToAdd == kPlus ||
                  textToAdd == kMinus ||
                  textToAdd == kMultiply ||
                  textToAdd == kDivide ||
                  textToAdd == kPercent)) _removeText();
          _clickedTexts += textToAdd;
        } else if (_clickedTexts.isEmpty &&
            (textToAdd == kPlus ||
                textToAdd == kMinus ||
                textToAdd == kMultiply ||
                textToAdd == kDivide ||
                textToAdd == kPercent)) {
          _clickedTexts;
        } else {
          if (!(textToAdd == kPlus ||
              textToAdd == kMinus ||
              textToAdd == kMultiply ||
              textToAdd == kDivide)) {
            _clickedTexts = textToAdd;
          }
        }
      },
    );
  }

  void _clearClickedTexts() {
    setState(
      () {
        _clickedTexts = '';
      },
    );
  }

  void _removeText() {
    setState(
      () {
        if (_clickedTexts.isNotEmpty) {
          _clickedTexts = _clickedTexts.substring(0, _clickedTexts.length - 1);
        }
      },
    );
  }

  void _calculate() {
    if (_clickedTexts.isNotEmpty && !(_clickedTexts == kErrorExpression)) {
      final String lastText = _clickedTexts.split('').last;
      if (lastText == kPlus ||
          lastText == kMinus ||
          lastText == kMultiply ||
          lastText == kDivide ||
          lastText == kPercent) {
        return;
      }
      setState(
        () {
          Parser parser = Parser();
          Expression exp;
          String resultUptoTwoDecimalPoints;
          try {
            exp = parser.parse(
              _clickedTexts.replaceAll(kMultiply, '*').replaceAll(kDivide, '/'),
            );
            ContextModel cm = ContextModel();
            resultUptoTwoDecimalPoints = exp
                .evaluate(EvaluationType.REAL, cm)
                .toStringAsFixed(2)
                .toString();
          } catch (e) {
            _clickedTexts = kErrorExpression;
            return;
          }

          List<String> decimalDigits =
              resultUptoTwoDecimalPoints.split('.').last.split('');
          if (decimalDigits.first == kZero && decimalDigits.last == kZero) {
            _clickedTexts = resultUptoTwoDecimalPoints.split('.').first;
          } else if (decimalDigits.first != kZero &&
              decimalDigits.last == kZero) {
            _clickedTexts = resultUptoTwoDecimalPoints.substring(0, 3);
          } else {
            _clickedTexts = resultUptoTwoDecimalPoints;
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InheritedCalculator(
      onCalculatorButtonPressed: onCalculatorButtonPressed,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.blue.shade50,
            title: const Text(
              kAppTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          _clickedTexts,
                          style: const TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalGap(),
              Container(
                color: Colors.blue.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: const [
                      CalculatorButtonsRow(
                        firstButtonText: kClear,
                        secondButtonText: kPercent,
                        thirdButtonText: kRemove,
                        forthButtonText: kDivide,
                      ),
                      CalculatorButtonsRow(
                        firstButtonText: kSeven,
                        secondButtonText: kEight,
                        thirdButtonText: kNine,
                        forthButtonText: kMultiply,
                      ),
                      CalculatorButtonsRow(
                        firstButtonText: kFour,
                        secondButtonText: kFive,
                        thirdButtonText: kSix,
                        forthButtonText: kMinus,
                      ),
                      CalculatorButtonsRow(
                        firstButtonText: kOne,
                        secondButtonText: kTwo,
                        thirdButtonText: kThree,
                        forthButtonText: kPlus,
                      ),
                      CalculatorButtonsRow(
                        firstButtonText: kZero,
                        secondButtonText: kDoubleZero,
                        thirdButtonText: kDot,
                        forthButtonText: kEqual,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
