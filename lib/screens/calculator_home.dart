import 'package:flutter/material.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({Key? key}) : super(key: key);

  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  String clickedTexts = '7383.90';

  void addClickedText(String textToAdd) {
    // TODO Yourself correct adding for example if I press all caluclation
    // keys 6-÷+ it shows all but in real life this is not possible.
    // So if we have already a caluclation keys then it should be 
    // replaced by new one. Exapmle we have 6- if we press ÷ then
    // it will become 6÷ not 6-÷.
    // Add this thing by yourself.
    setState(
      () {
        clickedTexts += textToAdd;
      },
    );
  }

  void clearClickedTexts() {
    setState(
      () {
        clickedTexts = '';
      },
    );
  }

  void deleteClickedTexts() {
    setState(
      () {
        clickedTexts = clickedTexts.substring(0, clickedTexts.length - 1);
      },
    );
  }

  void calculate() {
    setState(
      () {
        // evalutate on prress.
        clickedTexts = 'Finding..';
        // TODO Yourself.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  clickedTexts,
                  style: const TextStyle(fontSize: 48),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue.shade50,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: clearClickedTexts,
                              child: const Text(
                                'C',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              '%',
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: deleteClickedTexts,
                              child: const Text(
                                '«',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('÷'),
                              child: Text(
                                '÷',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.teal.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('7'),
                              child: const Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('8'),
                              child: const Text(
                                '8',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('7'),
                              child: const Text(
                                '9',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('×'),
                              child: Text(
                                '×',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.teal.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('4'),
                              child: const Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('5'),
                              child: const Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('6'),
                              child: const Text(
                                '6',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('-'),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.teal.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('1'),
                              child: const Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('2'),
                              child: const Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('3'),
                              child: const Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('+'),
                              child: Text(
                                '+',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.teal.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('0'),
                              child: const Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('00'),
                              child: const Text(
                                '00',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: () => addClickedText('.'),
                              child: const Text(
                                '.',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: InkWell(
                              onTap: calculate,
                              child: Text(
                                '=',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.teal.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
