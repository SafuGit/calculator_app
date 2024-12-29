import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
      width: double.infinity,
      height: 200,
      color: Colors.orange,
      child: const FittedBox(
        alignment: Alignment.centerRight, // Align text to the right
        fit: BoxFit.scaleDown, // Scale text down if it overflows
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "12345678",
            style: TextStyle(fontSize: 60), // Original font size as a baseline
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}