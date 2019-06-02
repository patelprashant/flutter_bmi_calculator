import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardcolor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class UserInputPage extends StatefulWidget {
  UserInputPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UserInputPageState createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  bgColor: activeCardcolor,
                  cardChild: new CardIconContent(
                      iconData: FontAwesomeIcons.mars, iconLabel: 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  bgColor: activeCardcolor,
                  cardChild: new CardIconContent(
                    iconData: FontAwesomeIcons.venus,
                    iconLabel: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(bgColor: activeCardcolor),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(bgColor: activeCardcolor),
              ),
              Expanded(
                child: ReusableCard(bgColor: activeCardcolor),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
