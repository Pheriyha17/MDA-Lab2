import 'package:flutter/material.dart';

void clicked() {
  print("Button clicked");
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 233, 47, 30), Color.fromRGBO(255, 255, 255, 1), Colors.purple],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Image",
                  style:TextStyle(fontSize: 75),
                ),
                TextButton(
                  onPressed: clicked,
                  child: const Text(
                    "Press Me",
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 73, 39, 176)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}