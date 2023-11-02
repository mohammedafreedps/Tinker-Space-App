import 'package:flutter/material.dart';

class cusText extends StatelessWidget {
  // const cusWidget({super.key});

  final String? text;
  final Color? color;
  final double? fontsize;
  final FontWeight? fontweight;
  const cusText(this.text,{this.color,this.fontsize,this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(text!,style: TextStyle(color: color,fontSize: fontsize,fontWeight: fontweight),);
  }
}