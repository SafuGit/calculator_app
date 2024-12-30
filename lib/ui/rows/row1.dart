import 'package:calculator_app/services/calc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorModel>(context);
    return Row(
        children: [
          // 1
          Expanded(
            child: ElevatedButton(
              onPressed: () => calculator.onInputPressed("1"), 
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 200), // Height only; width is controlled by Expanded
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), 
                ),
                padding: EdgeInsets.zero,
                backgroundColor: Colors.black87,
              ),
              child: const Text(
                "1",
                style: TextStyle(fontSize: 24, color: Colors.white), 
              ), 
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () => calculator.onInputPressed("2"),  
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), 
                ),
                padding: EdgeInsets.zero, 
                backgroundColor: Colors.black87,
              ),
              child: const Text(
                "2",
                style: TextStyle(fontSize: 24, color: Colors.white), 
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () => calculator.onInputPressed("3"), 
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), 
                ),
                padding: EdgeInsets.zero, 
                backgroundColor: Colors.black87,
              ),
              child: const Text(
                "3",
                style: TextStyle(fontSize: 24, color: Colors.white), 
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () => calculator.onInputPressed("+"), 
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), 
                ),
                padding: EdgeInsets.zero, 
                backgroundColor: const Color.fromARGB(255, 72, 161, 9),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 50,)
            ),
          ),
        ],
      );
  }
}