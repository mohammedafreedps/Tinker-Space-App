import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/LinksListPage.dart';
import 'package:tinkerspace/pages/QRScanningPage.dart';
import 'package:tinkerspace/utils/UrlLaucher.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/cusButton.dart';
import 'package:tinkerspace/widgets/cusText.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          height: _screenHeight  < 550 ? 800 : _screenHeight,
          color: PrimaryColor,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Animate(
                    effects: [SlideEffect()],
                    child: cusText(
                      'Tinker Space',
                      color: SecondaryColor,
                      fontsize: udv2Fontsize,
                    ),
                  ),
                  Animate(
                    effects: [FadeEffect()],
                    child: cusButton(
                      300,
                      udvbigbuttonheight,
                      'Daily Login',
                      color: SecondaryColor,
                      buttonfontcolor: PrimaryColor,
                      fontsize: udvbigbuttonfontsize,
                      toperform: () {
                        urlLauncher(DailyLoginUrl);
                      },
                    ),
                  ),
                  Animate(
                    effects: [FadeEffect(delay: Duration(milliseconds: 100))],
                    child: cusButton(
                      300,
                      udvbigbuttonheight,
                      'Project submit',
                      color: SecondaryColor,
                      buttonfontcolor: PrimaryColor,
                      fontsize: udvbigbuttonfontsize,
                      toperform: () {
                        urlLauncher(ProjectSubmitUrl);
                      },
                    ),
                  ),
                  Animate(
                    effects: [FadeEffect(delay: Duration(milliseconds: 200))],
                    child: cusButton(
                      350,
                      udvbigbuttonheight,
                      'Kickstart your project',
                      color: SecondaryColor,
                      buttonfontcolor: PrimaryColor,
                      fontsize: udvbigbuttonfontsize,
                      toperform: () {
                        urlLauncher(KisckstartProjectUrl);
                      },
                    ),
                  ),
                  isAndroid == true
                      ? Animate(
                        effects: [FadeEffect(delay: Duration(milliseconds: 300))],
                        child: cusButton(
                            300,
                            udvbigbuttonheight,
                            'Scan QR',
                            color: SecondaryColor,
                            buttonfontcolor: PrimaryColor,
                            fontsize: udvbigbuttonfontsize,
                            toperform: () {
                              pushNavigate(context, QRScannerPage());
                            },
                          ),
                      )
                      : cusText('QR Not Supported',color: SecondaryColor,),
                  Animate(
                    effects: [FadeEffect(delay: Duration(milliseconds: 400))],
                    child: cusButton(
                      300,
                      udvbigbuttonheight,
                      'MORE',
                      color: SecondaryColor,
                      buttonfontcolor: PrimaryColor,
                      fontsize: udvbigbuttonfontsize,
                      gradiant: true,
                      toperform: () {
                        pushNavigate(context, LinkListPage());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
