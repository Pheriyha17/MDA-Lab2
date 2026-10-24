// Widget = Class in flutter

import 'package:flutter/material.dart';

// Class declaration uses Came1 Naming Convention where each word in a sentence is capitalized and no spaces are used
class CustomButton extends StatelessWidget {
    const CustomButton({super.key}); // super.key is used to pass the key to the parent class

    // Build funtion is important
    // The build function tells flutter  to build/render the UI 
    @override
    Widget build(BuildContext context) { 
        //BuildContext containts metadata of the widget (ie. Widget specific data/widget position & layout)
        return TextButton(
            onPressed: 
                () {}, // This is a callback function, it is a function that is passed as an argument to another function
            child: Text(
                "Love Live Laugh!",
                style: TextStyle(fontSize: 20, color: Colors.purple),
            ),
        );


    }
}