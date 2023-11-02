import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/HomePage.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/cusButton.dart';
import 'package:tinkerspace/widgets/cusText.dart';

class FirstTimePage extends StatelessWidget {
  const FirstTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: PrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cusText('First Time?',fontsize: udv1Fontsize,color: SecondaryColor,fontweight: bold,),
            SizedBox(height: 150,),
            cusButton(udvsmallbuttonwidth, udvsmallbuttonheight, 'YES',fontsize: udvsmallbuttonfontsize,buttonfontcolor: PrimaryColor,color: SecondaryColor,),
            SizedBox(height: 50,),
            cusButton(udvsmallbuttonwidth, udvsmallbuttonheight, 'NO',fontsize: udvsmallbuttonfontsize,buttonfontcolor: PrimaryColor,color: SecondaryColor,toperform: (){pushReplaceNavigate(context, HomePage());},)
          ],
        ),
      ),
    );
  }
}