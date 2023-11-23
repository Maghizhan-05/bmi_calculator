import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0D22),
        canvasColor: Color(0xFF0A0D22),
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
          accentColor: Color(0xFFEB1555),
          cardColor: Color(0xFF111428),
        ),
        
      ),
      home: InputPage(),
    );
  }
}

