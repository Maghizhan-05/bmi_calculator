import 'package:flutter/material.dart';
import 'constants.dart';
const Boxheight = 15.0;

class IconContent extends StatelessWidget {

  IconContent({required this.iconData, required this.Label});

  final IconData iconData;
  final String Label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 90.0,),
        SizedBox(height: Boxheight),
        Text(Label,style: kTextstyling
        ),
      ],
    );
  }
}