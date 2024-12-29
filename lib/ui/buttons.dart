import 'package:calculator_app/ui/rows/row1.dart';
import 'package:calculator_app/ui/rows/row2.dart';
import 'package:calculator_app/ui/rows/row3.dart';
import 'package:calculator_app/ui/rows/row4.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6, // 60% of the screen height
      child: const Column(
        children: [
          Expanded(child: Row1()), // Fully fills 25% of the container
          Expanded(child: Row2()), // Fully fills 25% of the container
          Expanded(child: Row3()), // Fully fills 25% of the container
          Expanded(child: Row4()), // Fully fills 25% of the container
          Divider(color: Colors.white, height: 1), // 1-pixel divider
          SizedBox(
            height: 100,
            child: Align(
              alignment: Alignment.center,
              child: Text("Calculate the result", style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
          )
        ],
      ),
    );
  }
}