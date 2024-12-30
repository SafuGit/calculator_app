import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:developer';

class CalculatorModel extends ChangeNotifier {
  String displayText = "0"; // Displayed on the screen
  String expression = ""; // The mathematical expression being built

  /// Handles number and operator button presses
  void onInputPressed(String input) {
    if (displayText == "0" && input != ".") {
      displayText = input; // Replace "0" with the input
    } else {
      displayText += input; // Append input to display
    }
    expression += input; // Build the expression string
    notifyListeners();
  }

  /// Evaluates the full mathematical expression
  void onEqualsPressed() {
    try {
      Parser parser = Parser();
      Expression exp = parser.parse(expression); // Parse the expression
      ContextModel cm = ContextModel();
      double result = exp.evaluate(EvaluationType.REAL, cm); // Evaluate
      displayText = result.toString();
      expression = result.toString(); 
      log(expression);
    } catch (e) {
      displayText = "Error";
    }
    notifyListeners();
  }

  /// Clears the display and resets state
  void onClearPressed() {
    displayText = "0";
    expression = "";
    notifyListeners();
  }
}
