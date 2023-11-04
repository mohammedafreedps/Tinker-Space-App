import 'package:shared_preferences/shared_preferences.dart';

String? Username = '';
bool? isLogin;

saveUserName(String name)async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('username', name);
  print('name in sp $name');
}

readUserName()async{
 final SharedPreferences prefs = await SharedPreferences.getInstance();
 Username = await prefs.getString('username');
 print('name in sp get $Username');
}

setIslogin(bool islogin)async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('Islogin', islogin);
  print('user login $islogin');
}

readIslogin()async{
 final SharedPreferences prefs = await SharedPreferences.getInstance();
 isLogin = await prefs.getBool('Islogin');
 print('user login get $isLogin');
}