import 'package:flutter/material.dart';

class TextEdit extends StatelessWidget {
  const TextEdit(this.text,
      {super.key}); //takes the key from the widget inheritated to forward to the Stateless

  final String text; //proprietate?
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.green,
        fontSize: 28,
      ),
    );
  }
}
