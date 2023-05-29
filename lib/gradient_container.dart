//import 'package:first_app/text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.clr1, this.clr2, this.clr3, {super.key});
  final Color clr1;
  final Color clr2;
  final Color clr3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            clr1,
            clr2,
            clr3
            // Color.fromARGB(255, 111, 221, 235),
            // Color.fromRGBO(239, 255, 133, 1),
            // Color.fromARGB(255, 230, 118, 226)
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/dice-5.png',
          width: 160,
        ),
      ),
    );
  }
}
