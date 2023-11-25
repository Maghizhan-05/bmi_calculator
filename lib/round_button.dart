import 'package:flutter/material.dart';
import 'constants.dart';



class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.OnTap});

  final IconData icon;
  final Function() OnTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: OnTap,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: kRoundWidgetColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,),
      elevation: 10.0,

    );
  }
}