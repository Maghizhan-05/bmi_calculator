import 'package:flutter/material.dart';
import 'constants.dart';



class BottomBar extends StatelessWidget {

  BottomBar({required this.BottomLabel, required this.onTouch});

  final Function()? onTouch;
  final String BottomLabel;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTouch,
      child: Container(
        child: Center(
          child: Text(BottomLabel,style: kBottomBarStyle),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(color: kBottomBarColor,borderRadius: BorderRadius.circular(15.0)),
        width: double.infinity,
        height: kBottomBarheight,
      ),
    );
  }
}