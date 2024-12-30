import 'package:calculator_app/services/calc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Row2 extends StatelessWidget {
  const Row2({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorModel>(context);
    return Row(
      children: [
        // 4
        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("4"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 200), // Height only; width is controlled by Expanded
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: Colors.black87,
            ),
            child: const Text(
              "4",
              style: TextStyle(fontSize: 24, color: Colors.white), 
            ), 
          ),
        ),

        // 5
        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("5"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 200), // Height only; width is controlled by Expanded
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: Colors.black87,
            ),
            child: const Text(
              "5",
              style: TextStyle(fontSize: 24, color: Colors.white), 
            ), 
          ),
        ),

        // 6
        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("6"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 200), // Height only; width is controlled by Expanded
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: Colors.black87,
            ),
            child: const Text(
              "6",
              style: TextStyle(fontSize: 24, color: Colors.white), 
            ), 
          ),
        ),

        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("-"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 200),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: const Color.fromARGB(255, 221, 45, 0),
            ),
            child: const Icon(Icons.remove, color: Colors.white, size: 50,)
          ),
        ),
      ],
    );
  }
}