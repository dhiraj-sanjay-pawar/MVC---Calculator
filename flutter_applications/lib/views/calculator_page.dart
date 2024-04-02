import 'package:flutter/material.dart'; // Importing necessary packages
import '../models/calculation.dart'; // Importing the Calculation model
import '../controllers/calculator_controller.dart'; // Importing the CalculatorController

// Definition of CalculatorPage widget
class CalculatorPage extends StatelessWidget {
  // Creating TextEditingController for number inputs
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();

  // Creating CalculatorController instance
  final CalculatorController _controller = CalculatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'), // Setting the app bar title
      ),
      body: Padding(
        padding: EdgeInsets.all(20), // Adding padding to the body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField( // Text field for entering number 1
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Number 1'),
            ),
            SizedBox(height: 20), // Adding vertical spacing between widgets
            TextField( // Text field for entering number 2
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Number 2'),
            ),
            SizedBox(height: 20), // Adding vertical spacing between widgets
            ElevatedButton( // Button to trigger calculation
              onPressed: () {
                _controller.performAddition( // Calling performAddition method from CalculatorController
                  int.tryParse(_number1Controller.text), // Parsing input text to integer
                  int.tryParse(_number2Controller.text), // Parsing input text to integer
                );
              },
              child: Text('Calculate'), // Text displayed on the button
            ),
            SizedBox(height: 20), // Adding vertical spacing between widgets
            StreamBuilder<Calculation>( // StreamBuilder to display calculation result
              stream: _controller.calculationStream, // Listening to calculation stream
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data != null) { // Checking if data is available
                  return Text( // Displaying calculation result
                    'Result: ${snapshot.data!.result ?? ''}', // Displaying result value if available
                    style: TextStyle(fontSize: 20), // Setting text style
                  );
                } else {
                  return SizedBox(); // Returning empty container if data is not available
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
