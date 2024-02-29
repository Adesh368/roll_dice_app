import 'dart:math';

import 'package:flutter/material.dart';


final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}


class _DiceRollerState extends State<DiceRoller> {
  
  // var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceroll = 2;
  void rollDice() {
  //  var diceRoll = Random().nextInt(6) + 1;
    setState(() {
   //    activeDiceImage = 'assets/images/dice-$diceRoll.png';
      currentDiceroll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceroll.png',
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll dice'),
          )
        ],
      );
  }
}