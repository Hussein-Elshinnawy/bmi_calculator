import 'dart:math';
class CalcuatorBrain{
  CalcuatorBrain({this.height=0, this.weight=0});
  final int weight;
  final int height;
  double _bmi=0;
  String calculateBMI(){
    _bmi = weight/ pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){
      return 'OverWeight';
    }else if(_bmi> 18.5){
      return 'Normal';
    }else {
      return 'UnderWeight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight';
    }else if(_bmi> 18.5){
      return 'You have a normal body weight';
    }else {
      return 'You have a lower than normal body weight';
    }
  }

}