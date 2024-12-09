import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const double paddingValue = 8.0; // Define a constant for padding
    const double smallFontSize = 10.0; // Font size for small text
    const double mediumFontSize = 15.0; // Font size for medium text
    const double largeFontSize = 20.0; // Font size for large text

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10), // Margin for blue container
                color: Colors.blue,
                height: 50,
                width: 50,
                child: Center(
                  // Centering the text
                  child: Padding(
                    // Adding padding around the text
                    padding: EdgeInsets.all(1), // Padding around the text
                    child: const Text(
                      "Can't see me",
                      style: TextStyle(
                        fontSize: smallFontSize, // Set a reasonable font size
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    bottom: 30), // Margin for red container
                color: Colors.red,
                height: 100, // Height for better visibility
                width: 100, // Width for better visibility
                padding: EdgeInsets.all(1), // Padding inside the red container
                child: Center(
                  // Centering the text
                  child: Padding(
                    // Adding padding around the text
                    padding: EdgeInsets.all(1), // Padding around the text
                    child: const Text(
                      "Mid box",
                      style: TextStyle(
                        fontSize: mediumFontSize, // Set a reasonable font size
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10), // Margin for green container
                color: Colors.green,
                height: 200,
                width: 200,
                padding: EdgeInsets.all(1),
                child: Center(
                  // Centering the text
                  child: Padding(
                    // Adding padding around the text
                    padding: EdgeInsets.all(1), // Padding around the text
                    child: const Text(
                      "Big box",
                      style: TextStyle(
                        fontSize: largeFontSize, // Set a reasonable font size
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 30), // Margin for yellow container
                color: Colors.yellow,
                height: 300,
                width: 300,
                child: Center(
                  // Centering the text
                  child: Padding(
                    // Adding padding around the text
                    padding:
                        EdgeInsets.all(paddingValue), // Padding around the text
                    child: const Text(
                      "Huge box",
                      style: TextStyle(
                        fontSize: largeFontSize, // Set a reasonable font size
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
