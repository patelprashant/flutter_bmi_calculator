import 'package:flutter/material.dart';

import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                bgColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'OVERWEIGHT',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '55.00',
                      style: kResultDigitStyle,
                    ),
                    Text(
                      'Your BMI Result is quite high, You should start excersice',
                      style: kResultBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
