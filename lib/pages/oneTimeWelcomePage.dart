import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/userNamePage.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/cusText.dart';

class OneTimeWelcomePage extends StatefulWidget {
  const OneTimeWelcomePage({super.key});

  @override
  State<OneTimeWelcomePage> createState() => _OneTimeWelcomePageState();
}

class _OneTimeWelcomePageState extends State<OneTimeWelcomePage> {
  @override
  void initState() {
    Timer(Duration (seconds: 5), () { 
       pushReplaceNavigate(context, userNamePage());
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
          child: cusText('Welcome',color: SecondaryColor,fontsize: udv1Fontsize,fontweight: bold,),
        ),
      ),
    );
  }
}