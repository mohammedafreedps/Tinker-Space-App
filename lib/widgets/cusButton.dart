import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:tinkerspace/consts/Values.dart';
import 'package:tinkerspace/widgets/cusText.dart';

class cusButton extends StatefulWidget {
  // const cusButton({super.key});
  final double? width;
  final double? height;
  final Color? color;
  final String? text;
  final double? fontsize;
  final Color? buttonfontcolor;
  final Function? toperform;
  final bool? gradiant;

  cusButton(this.width, this.height, this.text,
      {this.fontsize,
      this.buttonfontcolor,
      this.toperform,
      this.color,
      this.gradiant});

  @override
  State<cusButton> createState() => _cusButtonState();
}

class _cusButtonState extends State<cusButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.toperform != null) {
          widget.toperform!();
        }
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(buttonborderradiour),
          child: widget.gradiant == true
              ? Container(
                  width: widget.width,
                  height: widget.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [PrimaryColor , SecondaryColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                  ),
                  child: Center(
                    child: cusText(
                      widget.text,
                      fontsize: widget.fontsize,
                      color: widget.buttonfontcolor,
                    ),
                  ),
                )
              : Container(
                  width: widget.width,
                  height: widget.height,
                  color: widget.color,
                  child: Center(
                    child: cusText(
                      widget.text,
                      fontsize: widget.fontsize,
                      color: widget.buttonfontcolor,
                    ),
                  ),
                )),
    );
  }
}
