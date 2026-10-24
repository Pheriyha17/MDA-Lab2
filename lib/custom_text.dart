import 'package:flutter/material.dart';

// Creating a custom Widget/Class

// Step 1: Create a clas s that extends StatelessWidget or StatefulWidget
class CustomText extends StatelessWidget {
    // Step 2: Create a constructor for the class and pass the key value using super.key to the parent class (StatelessWidget)
  const CustomText(this.text, {super.key});

 final String text;

// Step 3: Create a build function & pass the BuildContext argument inside the paranthesis()
// Remember the build function must return a widget
  @override // @override will override the build function of the parent class (StatelessWidget) and provide a new implementation for it
  Widget build(BuildContext context) {
    // Step 4: Return a widget from the build function, in this case we are returning a Text widget
    return Text(
     text,
      style: TextStyle(
        fontSize: 60,
        fontStyle: FontStyle.italic, 
        color: const Color.fromARGB(255, 0, 0, 0),
    )
    );
  }
}