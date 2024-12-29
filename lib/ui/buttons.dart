import 'package:calculator_app/ui/rows/row1.dart';
import 'package:calculator_app/ui/rows/row2.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // ROW - 1
        Row1(),

        // ROW - 2
        Row2()
      ],
    );
  }
}