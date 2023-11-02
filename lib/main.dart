import 'package:flutter/material.dart';
import 'package:tinkerspace/pages/oneTimeWelcomePage.dart';

void main() {
  runApp(const tinkerspace());
}

class tinkerspace extends StatelessWidget {
  const tinkerspace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OneTimeWelcomePage(),
    );
  }
}
