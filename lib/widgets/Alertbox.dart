import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/pages/AddLinksPage.dart';
import 'package:tinkerspace/utils/UrlLaucher.dart';
import 'package:tinkerspace/utils/navigateFunction/pushNavigate.dart';
import 'package:tinkerspace/widgets/cusText.dart';

showAlertDialog(BuildContext context, String content, String url,
    String butonetext, String buttwotext,
    {int? index, Function? delete, Function? rebuild}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: PrimaryColor,
        title: Center(
          child: cusText(
            'Do you want to',
            color: SecondaryColor,
          ),
        ),
        content: Text(content),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: cusText(
                  butonetext,
                  color: SecondaryColor,
                ),
                onPressed: () {
                  if (index == null) {
                    print('woking null look');
                    Future.microtask((){
                      pushReplaceNavigate(context, AddLinkPage(showURL: url,));
                    }); 
                  }
                  if (index != null) {
                    delete!(index);
                    rebuild!();
                  }

                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: cusText(
                  buttwotext,
                  color: SecondaryColor,
                ),
                onPressed: () {
                  popNavigate(context);
                  urlLauncher(url);
                  // Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      );
    },
  );
}
