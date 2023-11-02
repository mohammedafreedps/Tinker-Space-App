import 'package:flutter/material.dart';

pushNavigate(BuildContext context,Widget page){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>page));
}

pushReplaceNavigate(BuildContext context,Widget page){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>page));
}

popNavigate(BuildContext context){
  Navigator.pop(context);
}