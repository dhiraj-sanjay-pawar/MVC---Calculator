// Importing necessary packages
import 'package:flutter/material.dart';

// Importing CalculatorPage widget
import 'views/calculator_page.dart';

// Main function to run the application
void main() {
  runApp(MyApp()); // Running the application by passing MyApp widget to runApp
}

// Defining the main application widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Returning a MaterialApp widget
      title: 'Calculator App', // Setting the title of the app
      theme: ThemeData( // Setting the theme data for the app
        primarySwatch: Colors.blue, // Setting the primary swatch color to blue
      ),
      home: CalculatorPage(), // Setting the home property to CalculatorPage widget
    );
  }
}
