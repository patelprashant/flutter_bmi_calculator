import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
          color: Color(0xFF8D8E98),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconLabel,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
