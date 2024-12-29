import 'package:flutter/material.dart';

class Row4 extends StatelessWidget {
  const Row4({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 0
        Expanded(
          child: ElevatedButton(
            onPressed: () {}, 
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

        // divide
        Expanded(
          child: ElevatedButton(
            onPressed: () {}, 
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
            onPressed: () {}, 
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