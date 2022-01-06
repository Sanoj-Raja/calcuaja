import 'package:calcuaja/constants/strings.dart';
import 'package:calcuaja/widgets/calculator_buttons_row.dart';
import 'package:calcuaja/widgets/gap.dart';
import 'package:calcuaja/widgets/inherited_calculator.dart';
import 'package:flutter/material.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({Key? key}) : super(key: key);

  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  String clickedTexts = '';

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
        if (clickedTexts.isNotEmpty) {
          String lastText = clickedTexts.split('').last;
          if ((lastText == kPlus ||
                  lastText == kMinus ||
                  lastText == kMultiply ||
                  lastText == kDivide) &&
              (textToAdd == kPlus ||
                  textToAdd == kMinus ||
                  textToAdd == kMultiply ||
                  textToAdd == kDivide)) _removeText();
          clickedTexts += textToAdd;
        } else {
          if (!(textToAdd == kPlus ||
              textToAdd == kMinus ||
              textToAdd == kMultiply ||
              textToAdd == kDivide)) {
            clickedTexts = textToAdd;
          }
        }
      },
    );
  }

  void _clearClickedTexts() {
    setState(
      () {
        clickedTexts = '';
      },
    );
  }

  void _removeText() {
    setState(
      () {
        clickedTexts = clickedTexts.substring(0, clickedTexts.length - 1);
      },
    );
  }

  void _calculate() {
    setState(
      () {
        clickedTexts = 'Finding..';
      },
    );
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
                          clickedTexts,
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
