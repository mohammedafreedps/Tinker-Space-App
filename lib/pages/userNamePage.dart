import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/welcomePage.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/Atextfield.dart';
import 'package:tinkerspace/widgets/cusButton.dart';
import 'package:tinkerspace/widgets/cusText.dart';

class userNamePage extends StatefulWidget {
  const userNamePage({super.key});

  @override
  State<userNamePage> createState() => _userNamePageState();
}

class _userNamePageState extends State<userNamePage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: PrimaryColor,
        child: Padding(
          padding: EdgeInsets.all(pagePadding),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 50,),
                cusText('Your Name',color: SecondaryColor,fontsize: udv2Fontsize,),
                Atextfield(_controller,SecondaryColor),
                cusButton(udvsmallbuttonwidth, udvsmallbuttonheight, 'save',color: SecondaryColor,buttonfontcolor: PrimaryColor,fontsize: udvsmallbuttonfontsize,toperform: (){pushReplaceNavigate(context, welcomePage());} ,),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}