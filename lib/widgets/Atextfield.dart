import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';

class Atextfield extends StatelessWidget {
  // const Atextfield({super.key});
  final TextEditingController? controller;
  final colortheam;
  Atextfield(this.controller,this.colortheam);
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: colortheam,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: colortheam)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: colortheam)),
      ),
      style: TextStyle(color: colortheam),
    );
  }
}
