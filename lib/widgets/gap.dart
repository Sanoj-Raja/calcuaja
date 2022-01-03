import 'package:flutter/material.dart';

class VerticalGap extends StatelessWidget {
  final double? gap;
  const VerticalGap({Key? key, this.gap = 10}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gap,
    );
  }
}

class HorizontalGap extends StatelessWidget {
  final double gap;
  const HorizontalGap({Key? key, this.gap = 10}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: gap,
    );
  }
}
