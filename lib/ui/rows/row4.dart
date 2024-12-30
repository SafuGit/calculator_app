import 'package:calculator_app/services/calc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Row4 extends StatelessWidget {
  const Row4({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorModel>(context);
    return Row(
      children: [
        // 0
        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("0"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 250), // Height only; width is controlled by Expanded
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: Colors.black87,
            ),
            child: const Text(
              "0",
              style: TextStyle(fontSize: 60, color: Colors.white), 
            ), 
          ),
        ),

        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onClearPressed(), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 250),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: const Color.fromARGB(255, 250, 7, 7),
            ),
            child: const Text("C", style: TextStyle(color: Colors.white, fontSize: 60))
          ),
        ),

        // divide
        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onInputPressed("/"), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 250),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: const Color.fromARGB(255, 184, 5, 103),
            ),
            child: const Text("÷", style: TextStyle(color: Colors.white, fontSize: 60))
          ),
        ),

        // equals
        Expanded(
          child: ElevatedButton(
            onPressed: () => calculator.onEqualsPressed(), 
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 250),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0), 
              ),
              padding: const EdgeInsets.all(16), 
              backgroundColor: const Color.fromARGB(255, 250, 173, 7),
            ),
            child: const Text("=", style: TextStyle(color: Colors.white, fontSize: 60))
          ),
        ),
      ],
    );
  }
}