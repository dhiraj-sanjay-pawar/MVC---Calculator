// Importing necessary packages
import 'dart:async';

// Importing the Calculation model
import '../models/calculation.dart';

// Definition of CalculatorController class
class CalculatorController {
  // Creating a StreamController to manage the stream of calculations
  final _calculationController = StreamController<Calculation>.broadcast();

  // Getter method to access the calculation stream
  Stream<Calculation> get calculationStream => _calculationController.stream;

  // Method to perform addition operation
  void performAddition(int? number1, int? number2) {
    // Creating a Calculation object with provided numbers
    Calculation calculation = Calculation(number1: number1, number2: number2);

    // Performing addition operation
    calculation.performAddition();

    // Adding the calculation result to the stream
    _calculationController.add(calculation);
  }

  // Method to dispose of the StreamController
  void dispose() {
    _calculationController.close(); // Closing the StreamController to release resources
  }
}
