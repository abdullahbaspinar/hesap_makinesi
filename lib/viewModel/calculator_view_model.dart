import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CalculatorViewModel extends ChangeNotifier {
  String displayText = "0";
  double firstNumber = 0;
  double secondNumber = 0;
  String selectedOperation = "";
  bool isNewNumber = true;

  void numberPressed(String number) {
    if (isNewNumber || displayText == "0") {
      displayText = number;
      isNewNumber = false;
    } else {
      displayText += number;
    }
    notifyListeners();
  }

  void operationPressed(String operation) {
    firstNumber = double.parse(displayText);
    selectedOperation = operation;
    isNewNumber = true;

    notifyListeners();
  }

  void calculateResult() {
    secondNumber = double.parse(displayText);
    double result = 0;
    switch (selectedOperation) {
      
      case "+":
        result = firstNumber + secondNumber;
      case "-":
        result = firstNumber - secondNumber;
      case "*":
        result = firstNumber * secondNumber;
      case "/":
        if (secondNumber != 0) {
          result = firstNumber / secondNumber;
        } else {
          displayText = "Hata";
          notifyListeners();
          return;
        }
        break;
    }
    if (result % 1 == 0) {
      displayText = result.toInt().toString();
    } else {
      displayText = result.toString();
    }

    isNewNumber = true;

    notifyListeners();
  }

  void clearAll() {
    displayText = "0";
    firstNumber = 0;
    secondNumber = 0;
    selectedOperation = "";
    isNewNumber = true;

    notifyListeners();
  }
}
