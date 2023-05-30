import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 1;
  final randomizer = Random();
  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 60),
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 160,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 111, 235, 185),
          ),
          onPressed: () {
            rollDice();
          }, //anonymous function
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Color.fromRGBO(27, 28, 22, 1),
            ),
          ),
        )
      ],
    );
  }
}
