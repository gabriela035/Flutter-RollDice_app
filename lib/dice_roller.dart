import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-5.png';
  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-6.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
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
