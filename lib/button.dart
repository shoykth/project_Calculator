import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: button(),
//     );
//   }

  Scaffold button() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom ElevatedButton"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Action when button is pressed
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red; // Button color when pressed
                }
                return Colors.black; // Default button color
              },
            ),
          ),
          child: Text(
            'Press Me',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

