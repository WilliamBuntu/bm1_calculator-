// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'buttom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
     required this.bmiResults ,
     required this.resultText ,
     required this.interpretation });

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Text(
                "Your Results",
                style: kTittleLable,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText,
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiResults,
                          style: kBMITextStyle,
                        ),
                        Text(
                          interpretation,
                          style: kBodyTextStyle,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    colour: activeCardColor)),
            const ButtomButton(),
          ],
        ));
  }
}
