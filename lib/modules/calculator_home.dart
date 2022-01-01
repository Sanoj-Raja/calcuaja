import 'package:calcuaja/widgets/calculator_buttons_row.dart';
import 'package:calcuaja/widgets/gap_widget.dart';
import 'package:flutter/material.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({Key? key}) : super(key: key);

  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '7494.333',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[50],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: const [
                    VerticalGap(
                      gap: 15,
                    ),
                    CalculatorButtonsRow(
                      firstRowText: 'C',
                      secondRowText: '%',
                      thirdRowText: '«',
                      finalRowText: '÷',
                    ),
                    VerticalGap(
                      gap: 30,
                    ),
                    CalculatorButtonsRow(
                      firstRowText: '7',
                      secondRowText: '8',
                      thirdRowText: '9',
                      finalRowText: '×',
                    ),
                    VerticalGap(
                      gap: 30,
                    ),
                    CalculatorButtonsRow(
                      firstRowText: '4',
                      secondRowText: '5',
                      thirdRowText: '6',
                      finalRowText: '-',
                    ),
                    VerticalGap(
                      gap: 30,
                    ),
                    CalculatorButtonsRow(
                      firstRowText: '1',
                      secondRowText: '2',
                      thirdRowText: '3',
                      finalRowText: '+',
                    ),
                    VerticalGap(
                      gap: 30,
                    ),
                    CalculatorButtonsRow(
                      firstRowText: '0',
                      secondRowText: '00',
                      thirdRowText: '.',
                      finalRowText: '=',
                    ),
                    VerticalGap(
                      gap: 25,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
