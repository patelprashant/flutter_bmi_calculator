import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/result_page.dart';
import 'package:flutter_bmi_calculator/reusable_card.dart';
import 'package:flutter_bmi_calculator/round_action_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_icon_content.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class UserInputPage extends StatefulWidget {
  UserInputPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UserInputPageState createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  bgColor: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: new CardIconContent(
                      iconData: FontAwesomeIcons.mars, iconLabel: 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  bgColor: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: new CardIconContent(
                    iconData: FontAwesomeIcons.venus,
                    iconLabel: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              bgColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kDigitStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: kMinSliderVal,
                    max: kMaxSliderVal,
                    inactiveColor: kMaxSliderInactiveColor,
                    onChanged: (double newVal) {
                      setState(() {
                        height = newVal.round();
                        print(newVal);
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    bgColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kDigitStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RoundIconButton(
                              action: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              iconData: FontAwesomeIcons.minusCircle,
                            ),
                            RoundIconButton(
                              action: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              iconData: FontAwesomeIcons.plusCircle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kDigitStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RoundIconButton(
                              action: () {
                                setState(() {
                                  age--;
                                });
                              },
                              iconData: FontAwesomeIcons.minusCircle,
                            ),
                            RoundIconButton(
                              action: () {
                                setState(() {
                                  age++;
                                });
                              },
                              iconData: FontAwesomeIcons.plusCircle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage()));
            },
            child: Container(
              child: Text('CALCULATE BMI'),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
