import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/LinksListPage.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/cusButton.dart';
import 'package:tinkerspace/widgets/cusText.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: PrimaryColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cusText('Tinker Space',color: SecondaryColor,fontsize: udv2Fontsize,),
                cusButton(300, udvbigbuttonheight, 'Daily Login',color: SecondaryColor,buttonfontcolor: PrimaryColor,fontsize: udvbigbuttonfontsize,),
                cusButton(300, udvbigbuttonheight, 'Project submit',color: SecondaryColor,buttonfontcolor: PrimaryColor,fontsize: udvbigbuttonfontsize,),
                cusButton(350, udvbigbuttonheight, 'Kickstart your project',color: SecondaryColor,buttonfontcolor: PrimaryColor,fontsize: udvbigbuttonfontsize,),
                cusButton(300, udvbigbuttonheight, 'Scan QR',color: SecondaryColor,buttonfontcolor: PrimaryColor,fontsize: udvbigbuttonfontsize,),
                cusButton(300, udvbigbuttonheight, 'MORE',color: SecondaryColor,buttonfontcolor: PrimaryColor,fontsize: udvbigbuttonfontsize,gradiant: true,toperform: (){pushNavigate(context, LinkListPage());},),
              ],
            ),
          ),
        ),
      ),
    );
  }
}