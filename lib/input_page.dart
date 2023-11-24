import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender{
  male,
  female,
}



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedgender;
  int height = 180;


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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Expanded(
          child: Row(
            children: [
              Expanded(
                child: BmiCard(
                  onPress: (){
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  colour: selectedgender == Gender.male ? kBmiCardColor : kInactiveBmiCard,
                  cardChild: IconContent(
                    iconData: FontAwesomeIcons.mars,
                    Label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: BmiCard(
                  //onPress() is a custom function which we passed as a argument in the BmiCard widget parameter.
                  onPress: (){
                    setState(() {
                      //Gender is enum function
                      selectedgender = Gender.female;
                    });
                  },
                  colour: selectedgender == Gender.female ? kBmiCardColor : kInactiveBmiCard,
                  cardChild: IconContent(iconData: FontAwesomeIcons.venus, Label: 'FEMALE'),
                ),
              ),
            ],
          ),
        ),
          Expanded(
            child: BmiCard(
              colour: kBmiCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',style: kTextstyling,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumbstyling,),
                      Text('cm',style: kTextstyling,),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kBottomBarColor,
                      inactiveTrackColor: kInactiveTrackColor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0,),
                      thumbColor: kBottomBarColor,
                      overlayColor: Color(0x29EB1555),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0,),
                    ),
                    child: Slider(value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue)  {
                      setState(() {
                        height = newValue.round();
                      });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    colour: kBmiCardColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    //BmiCard is a extracted widget created by extracting a container widget which is used repeatedly,so to use a repeated widget extract the repeated widget into a new widget to make the code tidy and DRY(Don't Repeat yourself).
                    colour: kBmiCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(color: kBottomBarColor,borderRadius: BorderRadius.circular(15.0)),
            width: double.infinity,
            height: kBottomBarheight,
          )
        ],
      ),
    );
  }
}


// The below line of code are replaced by the Ternary operator, Below code is the long and old method of doing the same function.

// Color maleCardColor = inactiveBmiCard;
// Color femaleCardColor = inactiveBmiCard;
//
// void updateColor(Gender selectedgender){
//   if(selectedgender == Gender.male){
//     if(maleCardColor == inactiveBmiCard){
//       maleCardColor = BmiCardColor;
//       femaleCardColor = inactiveBmiCard;
//     }
//     else{
//       maleCardColor = inactiveBmiCard;
//     }
//   }
//   if(selectedgender == Gender.female){
//     if(femaleCardColor == inactiveBmiCard){
//       femaleCardColor = BmiCardColor;
//       maleCardColor = inactiveBmiCard;
//     }
//     else{
//       femaleCardColor = inactiveBmiCard;
//     }
//   }
// }


