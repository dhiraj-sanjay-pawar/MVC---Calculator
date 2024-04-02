// Definition of the Calculation class
class Calculation {
  // Properties representing the numbers and result of the calculation
  int? number1; // First number
  int? number2; // Second number
  int? result; // Result of the calculation

  // Constructor with named parameters to initialize properties
  Calculation({this.number1, this.number2, this.result});

  // Method to perform addition operation
  void performAddition() {
    // Checking if both numbers are not null before performing addition
    if (number1 != null && number2 != null) {
      // Adding the numbers and assigning the result
      result = number1! + number2!;
    }
  }
}
