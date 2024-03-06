import 'package:flutter/material.dart';

//TO ADD TEXT TO THE CENTER OF THE SCREEN
class StyledTexted extends StatelessWidget {
  const StyledTexted({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Hello World!',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(255, 14, 36, 25),
          fontSize: 28.5),
    );
  }
}
