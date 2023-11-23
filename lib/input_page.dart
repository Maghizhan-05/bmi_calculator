import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(style :
          TextStyle(color: Colors.white,
          ),
              'BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [Expanded(
          child: Row(
            children: [
              Expanded(
                child: BmiCard(
                  colour: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: BmiCard(
                  colour: Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
        ),
          Expanded(
            child: BmiCard(
              colour: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    //BmiCard is a extracted widget created by extracting a container widget which is used repeatedly,so to use a repeated widget extract the repeated widget into a new widget to make the code tidy and DRY(Don't Repeat yourself).
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BmiCard extends StatelessWidget {
  BmiCard({required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        //decoration widget is used to add radius, color, border to the container widgets
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}