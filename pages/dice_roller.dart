import 'dart:math';

import 'package:flutter/material.dart';

var currentDiceRoller = 3;
var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  void diceRoller() {
    setState(() {
      currentDiceRoller = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "lib/images/dice-$currentDiceRoller.png",
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: diceRoller,
              child: const Text(
                "Roll Dice",
                style: TextStyle(fontSize: 28),
              )),
        )
      ],
    );
  }
}
