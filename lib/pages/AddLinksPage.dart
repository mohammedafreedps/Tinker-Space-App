import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/Atextfield.dart';
import 'package:tinkerspace/widgets/cusButton.dart';
import 'package:tinkerspace/widgets/cusText.dart';

class AddLinkPage extends StatefulWidget {
  const AddLinkPage({super.key});

  @override
  State<AddLinkPage> createState() => _AddLinkPageState();
}

class _AddLinkPageState extends State<AddLinkPage> {
  TextEditingController _link = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [PrimaryColor , SecondaryColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)
        ),
        child: Padding(
          padding: EdgeInsets.only(top: pagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [IconButton(onPressed: (){popNavigate(context);}, icon: Icon(Icons.arrow_back,color: SecondaryColor,))],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(buttonborderradiour),
                child: Container(
                  width: 400,
                  height: 500,
                  color: PrimaryColor,
                  padding: EdgeInsets.all(30),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                      cusText('Put link',color: SecondaryColor,fontsize: udv2Fontsize,),
                      Atextfield(_link,SecondaryColor),
                      cusButton(udvsmallbuttonwidth, udvsmallbuttonheight, 'SAVE',color: SecondaryColor,fontsize: udvsmallbuttonfontsize,)
                    ],),
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}