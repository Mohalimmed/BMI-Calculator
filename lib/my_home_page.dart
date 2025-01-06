import 'package:bmi_calculator/widgets/cusotm_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/reusable_container.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
enum Gender {
  male,
  female
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                     selectedGender = Gender.male;
                      });
                    },
                    child: reusableContainer(
                      color: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                      child: ReusableCustomIconWidget(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        // updateSelectedColor(Gender.female);
                        selectedGender = Gender.female;
                      });
                    },
                    child: reusableContainer(
                      color: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                      child: ReusableCustomIconWidget(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusableContainer(
              color: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableContainer(
                    color: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: reusableContainer(
                    color: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            width: double.infinity,
            margin: EdgeInsets.only(top: 15.0),
            height: 80,
          )
        ],
      ),
    );
  }
}
