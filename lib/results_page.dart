import 'package:flutter/material.dart';
import 'constants.dart';
import 'bmi_card.dart';
import 'bottom_bar.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.bmiText, required this.Interpret});

  final String bmiResult;
  final String bmiText;
  final String Interpret;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(
        child: Text(style :
        TextStyle(color: Colors.white,
    ),
    'BMI CALCULATOR',),
    ),
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Center(child: Text('Your BMI',style: kTitleTextStyle)),
            ),
          ),
          Expanded(
            flex: 5,
            child: BmiCard(
              colour: kBmiCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(bmiText, style: kBmiStatStyle,),
                Text(bmiResult, style: kBmiNumberStyle,),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(Interpret,
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,),
                ),
              ],
            ),
          ),
          ),
          BottomBar(BottomLabel: 'RE-CALCULATE', onTouch: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
    
  }
}
