import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

pushNavigate(BuildContext context,Widget page){
  // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>page));
  Navigator.of(context).push(PageAnimationTransition(page: page, pageAnimationType: FadeAnimationTransition()));
}

pushReplaceNavigate(BuildContext context,Widget page){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>page));
}

popNavigate(BuildContext context){
  Navigator.pop(context);
}