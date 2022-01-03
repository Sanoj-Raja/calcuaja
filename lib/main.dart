import 'package:calcuaja/screens/calculator_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calcuaja());
}

class Calcuaja extends StatelessWidget {
  const Calcuaja({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calcuaja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const CalculatorHome(),
    );
  }
}
