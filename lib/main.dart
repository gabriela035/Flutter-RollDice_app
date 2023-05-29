import 'package:flutter/material.dart';
import 'gradient_container.dart';

//custom function
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
              Color.fromARGB(255, 111, 221, 235),
              Color.fromRGBO(239, 255, 133, 1),
              Color.fromARGB(255, 228, 171, 226))),
    ),
  );
}
