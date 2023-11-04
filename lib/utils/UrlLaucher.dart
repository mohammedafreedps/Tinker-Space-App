
import 'package:url_launcher/url_launcher.dart';

urlLauncher(String url)async{
  final Uri uri = Uri.parse(url);
  if(await canLaunchUrl(uri)){
     await launchUrl(uri);
  }
  }
