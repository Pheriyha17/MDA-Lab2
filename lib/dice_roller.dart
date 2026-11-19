import 'package:flutter/material.dart';
import 'dart:math'; // Random class is in dart:math package

//This class is the static side
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  // Create state helps to render the initial UI
  // It is only called when the screen is first loaded
  // After this, all dynamic/changing screens is handled by _DiceRollerState
  @override
  State <DiceRoller> createState(){
    return _DiceRollerState();
  }
}
// underscore "_" means the class is private 
// State is the one that renders the UI "state"
// State is the dynamic part of the UI
class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random(); //Random class helps to generates random numbers
  var currentDiceNumber = 1; // Default dice number

  void rollDice() {
    // setState will call the build function everythime a variable inside it is updated
    // In this case, set state will call the buil function everytime "currentDiceNumber" changes
    // calling the build function = rerendering/reloading the UI
    setState(() {
     // Since the number generator starts from 0-5, we add 1 to make it 1-6
    currentDiceNumber = randomizer.nextInt(6) + 1;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //Image of the die
                Image.asset('assets/dice-$currentDiceNumber.png',width: 200),
                //Button to roll the die
                TextButton(
                  onPressed: rollDice,
                  child: const Text(
                    "Press Me",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            );
  }
}