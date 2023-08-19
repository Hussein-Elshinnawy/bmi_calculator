import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_Page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // I want to use the dark themeData but i'd like to change some things
      //so copyWith does that inherent from parent and then change what I need.
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
      ),
      home: InputPage(),
    );
  }
}
