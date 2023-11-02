import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/AddLinksPage.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/cusButton.dart';

class LinkListPage extends StatefulWidget {
  const LinkListPage({super.key});

  @override
  State<LinkListPage> createState() => _LinkListPageState();
}

class _LinkListPageState extends State<LinkListPage> {
  @override
  Widget build(BuildContext context) {
    String _search;
    onchane(String text){
      setState(() {
        _search = text;
        print('settata');
      });
    }
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: PrimaryColor,
        child: Padding(
          padding: EdgeInsets.only(top: pagePadding,bottom: pagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){
                        popNavigate(context);
                      }, icon: Icon(Icons.arrow_back,color: SecondaryColor,))
                    ],
                  ),
                  SizedBox(
                    width: 400,
                    child: TextField(
                      cursorColor: BaseColor,
                      onChanged: onchane,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: SecondaryColor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: SecondaryColor)),
                      ),
                      style: TextStyle(color: SecondaryColor),
                    ),
                  )
                ],
              ),
              cusButton(290, udvbigbuttonheight, 'Add Link',gradiant: true,buttonfontcolor: PrimaryColor,fontsize: udvbigbuttonfontsize,toperform: (){pushNavigate(context, AddLinkPage());},)
            ],
          ),
        ),
      ),
    );
  }
}
