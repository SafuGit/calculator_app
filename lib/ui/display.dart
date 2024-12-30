import 'package:calculator_app/services/calc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
  final calculator = Provider.of<CalculatorModel>(context);
  return Container(
      width: double.infinity,
      height: 200,
      color: Colors.orange,
      child: FittedBox(
        alignment: Alignment.centerRight, // Align text to the right
        fit: BoxFit.scaleDown, // Scale text down if it overflows
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            calculator.displayText,
            style: const TextStyle(fontSize: 60), // Original font size as a baseline
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}