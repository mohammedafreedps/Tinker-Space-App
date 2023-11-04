import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tinkerspace/Database/LinksModel.dart';
import 'package:tinkerspace/Database/sharedPreference.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/pages/oneTimeWelcomePage.dart';
import 'package:tinkerspace/pages/welcomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(URLSAdapter());
  URLbox = await Hive.openBox('URLSbox');

  readIslogin();
  if (Platform.isAndroid) {
    isAndroid = true;
  }else{
    isAndroid = false;
  }
  Timer(Duration(microseconds: 500), () {
    runApp(const tinkerspace());
  });
}

class tinkerspace extends StatelessWidget {
  const tinkerspace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLogin == true ? welcomePage() : OneTimeWelcomePage(),
    );
  }
}
