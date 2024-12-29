import 'package:calculator_app/ui/rows/row1.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ROW - 1
        const Row1(),

        // ROW - 2
        Row(
          children: [
            // 4
            Expanded(
              child: ElevatedButton(
                onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(0, 102.7), // Height only; width is controlled by Expanded
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
                onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(0, 102.7), // Height only; width is controlled by Expanded
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
          ],
        )
      ],
    );
  }
}