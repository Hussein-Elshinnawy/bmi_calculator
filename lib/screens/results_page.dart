import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/buttom_button.dart';
class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult='', @required this.interpretation='', @required this.resultText=''});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Results',
                style: kTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kResultTextStyle,),
                  Text(bmiResult, style: kBMIText,),
                  Text(interpretation,textAlign: TextAlign.center, style: kBody,),
                ],
              ),
            ),
          ),
          BottomButton(
            butonTittle: 'ReCalculate',
            onTap:  () {
              Navigator.pop(context);
              },
          )
        ],
      ),
    );
  }
}
