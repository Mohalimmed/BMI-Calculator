import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;
  
  double? _bmi;
  CalculatorBrain({required this.height, required this.weight});
  
  String bmiCalculator (){
    
    _bmi = weight / pow(height/100, 2) ;
    return _bmi!.toStringAsFixed(1);
  }

  String getBmiResult(){
    if(_bmi! >= 25){
      return 'OverWeight';
    } else if(_bmi! > 18.5){
      return 'Normal';
    } else{
      return 'UnderWeight';
    }
  }  String getBmiInterpretation(){
    if(_bmi! >= 25){
      return 'You have a higher than a normal body. Try to Exercise more';
    } else if(_bmi! > 18.5){
      return 'You have a normal body weight. Good Job!';
    } else{
      return 'You have a lower than a normal body weight. You can eat a bit more.';
    }
  }
}