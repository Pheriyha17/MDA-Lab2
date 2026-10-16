import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void clicked(){
  print("the button is clicked");
}
// Widget are the components that make up the UI of an app 
void main() {
  //runapp is the starting point of every app and it tells your phone to start rendering the app
  runApp(
    MaterialApp(
     home: Scaffold(
      body: Container(
           decoration: BoxDecoration(
            gradient:LinearGradient(
            colors:[Colors.pinkAccent,Colors.blueAccent],
             begin:AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
             )
           ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                 child: Text(
                  "Hello World",
                   style: TextStyle(
                    color:Color.fromARGB(255, 232, 255, 28),
                     fontSize: 70,
                    )
                   )
                  ),
                  TextButton(onPressed: clicked, child: Text(
                    "Click me!",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 16))),)
               ]
               ),
             ),
          )
        )
      )
  );
}