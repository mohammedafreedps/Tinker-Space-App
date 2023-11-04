import 'package:flutter/material.dart';
import 'package:tinkerspace/Database/LinksModel.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/Atextfield.dart';
import 'package:tinkerspace/widgets/cusButton.dart';
import 'package:tinkerspace/widgets/cusText.dart';

class AddLinkPage extends StatefulWidget {
  // const AddLinkPage({super.key});
  final Function? buildPreviousPage;
  final String? showURL;
  AddLinkPage({this.buildPreviousPage,this.showURL});

  @override
  State<AddLinkPage> createState() => _AddLinkPageState();
}

class _AddLinkPageState extends State<AddLinkPage> {
  String _url = '';
  TextEditingController _link = TextEditingController();
  TextEditingController _title = TextEditingController();
  
  saveLinks() async {
    String keying = DateTime.now().toString();
    URLbox.put(keying, URLS(_link.text, _title.text));
  }
  @override
  void initState() {
    setState(() {
      if (widget.showURL!=null) {
        _url = widget.showURL!;
        _link.text = _url;
      }
      
    });
    super.initState();
  }

  @override
  void dispose() {
    _link.dispose();
    _title.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = double.infinity;
    setState(() {
      _screenHeight = MediaQuery.of(context).size.height;
      print(_screenHeight);
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: _screenHeight < 650 ? 800 : _screenHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [PrimaryColor, SecondaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Padding(
            padding: EdgeInsets.only(top: pagePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          popNavigate(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: SecondaryColor,
                        ))
                  ],
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
                          cusText(
                            'Put link',
                            color: SecondaryColor,
                            fontsize: udv2Fontsize,
                          ),
                          cusText(
                            'Enter Title',
                            color: SecondaryColor,
                          ),
                          Atextfield(
                            _title,
                            SecondaryColor,
                          ),
                          cusText(
                            'Enter Link',
                            color: SecondaryColor,
                          ),
                          Atextfield(
                            _link,
                            SecondaryColor,
                          ),
                          cusButton(
                            udvsmallbuttonwidth,
                            udvsmallbuttonheight,
                            'SAVE',
                            color: SecondaryColor,
                            fontsize: udvsmallbuttonfontsize,
                            toperform: () {
                              if (_link.text.isNotEmpty &&
                                  _title.text.isNotEmpty) {
                                saveLinks();
                                popNavigate(context);
                                if (widget.buildPreviousPage != null) {
                                  widget.buildPreviousPage!();
                                }
                              }
                            }
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
