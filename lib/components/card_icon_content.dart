import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class CardIconContent extends StatelessWidget {
  final IconData iconData;
  final String iconLabel;

  CardIconContent({this.iconData, this.iconLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconLabel,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
