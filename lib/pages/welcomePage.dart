import 'dart:async';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
import 'package:tinkerspace/Database/sharedPreference.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/FirstTimePage.dart';
import 'package:tinkerspace/pages/HomePage.dart';
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
    Timer(Duration(milliseconds: 500), () {
      setState(() {
        readUserName();
      });
    });
    if (isLogin == null || isLogin == false) {
      Timer(Duration(seconds: 3), () {
        pushNavigate(context, FirstTimePage());
      });
    }else{
      Timer(Duration(seconds: 5),(){
        pushReplaceNavigate(context, HomePage());
      }); 
    }

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
          child: Animate(
            effects: [FadeEffect(delay: Duration(seconds: 1))],
            child: cusText(
              'Welcome,\n$Username',
              color: SecondaryColor,
              fontsize: udv1Fontsize,
              fontweight: bold,
            ),
          ),
        ),
      ),
    );
  }
}
