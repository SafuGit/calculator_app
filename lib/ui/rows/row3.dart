import 'package:calculator_app/services/calc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Row3 extends StatelessWidget {
  const Row3({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorModel>(context);
    return Row(
      children: [
        // 7
        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("7"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 200), // Height only; width is controlled by Expanded
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: Colors.black87,
            ),
            child: const Text(
              "7",
              style: TextStyle(fontSize: 24, color: Colors.white), 
            ), 
          ),
        ),

        // 8
        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("8"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 200), // Height only; width is controlled by Expanded
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: Colors.black87,
            ),
            child: const Text(
              "8",
              style: TextStyle(fontSize: 24, color: Colors.white), 
            ), 
          ),
        ),

        // 9
        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("9"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 200), // Height only; width is controlled by Expanded
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: Colors.black87,
            ),
            child: const Text(
              "9",
              style: TextStyle(fontSize: 24, color: Colors.white), 
            ), 
          ),
        ),

        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("*"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 200),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: const Color.fromARGB(255, 10, 136, 194),
            ),
            child: const Text("X", style: TextStyle(color: Colors.white, fontSize: 40))
          ),
        ),
      ],
    );
  }
}