import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/FirstTimePage.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/cusText.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
       pushReplaceNavigate(context, FirstTimePage());
     });
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: PrimaryColor,
        child: Center(
          child: cusText('Welcome,\nUsername',color: SecondaryColor,fontsize: udv1Fontsize,fontweight: bold,),
        ),
      ),
    );
  }
}