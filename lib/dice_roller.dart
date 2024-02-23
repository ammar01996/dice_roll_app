import 'dart:math';
import 'package:flutter/material.dart';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var num = 1;

  void rollDice() {
    num = randomiser.nextInt(6) + 1;

    setState(() {});
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              //padding: const EdgeInsets.only(top: 20),
              shape: const BeveledRectangleBorder()),
          child: Image.asset(
            'assets/images/dice-$num.png',
            width: 150,
          ),
        ),
      ],
    );
  }
}
