
import 'package:flutter/material.dart';

void clicked() {
  print("Button clicked");
}

void main() {
  // runApp is  the starting point of every app / it tells your phone to start rendering the app
  runApp(
    MaterialApp(
      home: Scaffold( // Scaffold helps to set layout of the app, or else flutter will will get confused
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.white,Colors.purple],
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    "#Pheriyha",
                    style: TextStyle(
                      fontSize: 60,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: clicked,
                  child: Text(
                    "love live laugh",
                    style: TextStyle(fontSize: 20, color: Colors.purple),
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