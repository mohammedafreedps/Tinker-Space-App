import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:tinkerspace/Database/LinksModel.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/AddLinksPage.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/Alertbox.dart';
import 'package:tinkerspace/widgets/cusButton.dart';

class LinkListPage extends StatefulWidget {
  const LinkListPage({super.key});

  @override
  State<LinkListPage> createState() => _LinkListPageState();
}

class _LinkListPageState extends State<LinkListPage> {
  List<URLS> allTasks = [];
  Iterable<URLS> HoldResults = [];
  List<URLS> allResults = [];
  String _search = '';

  double _screenHeight = double.infinity;

  Future<void> _getAllTasks() async {
    setState(() {
      allTasks = URLbox.values.cast<URLS>().toList();
      HoldResults = allTasks.where((element) =>
          element.title.toLowerCase().contains(_search.toLowerCase()));

      allResults = HoldResults.toList();
    });
  }

  @override
  void initState() {
    _getAllTasks();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    onchane(String text) {
      setState(() {
        _search = text;
        print('settata');
        _getAllTasks();
      });
    }

    _deleteLinks(int index) {
      setState(() {
        URLbox.deleteAt(index);
      });
    }

    setState(() {
      _screenHeight = MediaQuery.of(context).size.height;
      print(_screenHeight);
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: _screenHeight < 550 ? 800: _screenHeight,
          color: PrimaryColor,
          child: Padding(
            padding: EdgeInsets.only(top: pagePadding, bottom: pagePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(
                      width: 360,
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: pagePadding, right: pagePadding, top: 40),
                      child: SizedBox(
                        height: 700,
                        child: NotificationListener(
                          onNotification: (OverscrollIndicatorNotification overscroll){
                            overscroll.disallowIndicator();
                            return true;
                          },
                          child: ListView.builder(
                              itemCount: allResults.length,
                              itemBuilder: (BuildContext context, int index) {
                                URLS urlInstance = allResults[index];
                                return Animate(
                                  effects: [FadeEffect(duration: Duration(milliseconds: 300*index))],
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: GestureDetector(
                                      onLongPress: () { 
                                        showAlertDialog(context, 'Do you want to',urlInstance.Urls,index: index,delete:  _deleteLinks,rebuild:  _getAllTasks,'Delete','Launch');
                                      },
                                      child: cusButton(
                                        double.infinity,
                                        udvbigbuttonheight,
                                        urlInstance.title,
                                        color: SecondaryColor,
                                        buttonfontcolor: PrimaryColor,
                                        fontsize: udvbigbuttonfontsize,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    )
                  ],
                ),
                cusButton(
                  290,
                  udvbigbuttonheight,
                  'Add Link',
                  gradiant: true,
                  buttonfontcolor: PrimaryColor,
                  fontsize: udvbigbuttonfontsize,
                  toperform: () {
                    pushNavigate(context,  AddLinkPage(buildPreviousPage:  _getAllTasks));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
