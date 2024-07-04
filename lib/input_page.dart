import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_column.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                      colour: selectedGender == (Gender.male)
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: ReusableColumn(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: ReusableColumn(
                        label: "FEMALE", icon: FontAwesomeIcons.venus),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: const Color(0xFFEB1555),
                      inactiveColor: const Color(0xFF8D8E98),
                      onChanged: (double newHeight) {
                        setState(() {
                          height = newHeight.toInt();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(children: [
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
                cardChild: const Column(
                  children: [],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
                cardChild: const Column(
                  children: [],
                ),
              ),
            ),
          ])),
          Container(
            color: buttomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: buttomContainerHeight,
          )
        ],
      ),
    );
  }
}
