import 'dart:math';

double? _bmi;

class CalculatorBrain{

  CalculatorBrain({required this.weight,required this.height,});

  final int height;
  final int weight;




  String bmiCalculate(){
    _bmi = weight/ pow(height /100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi! >= 25){
      return 'Overweight';
    }else if (_bmi! > 18.5){
      return 'normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpet() {
    if(_bmi! >= 25){
      return 'You are Overweight, try to exercise more';
    }else if (_bmi! > 18.5){
      return 'You are normal, Keep it Up';
    }else{
      return 'You are Underweight, Eat well and good';
    }
  }
}

