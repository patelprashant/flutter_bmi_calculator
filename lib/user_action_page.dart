import 'package:flutter/material.dart';

import 'constants.dart';

class UserActionPage extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  UserActionPage({this.onTap, this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            buttonTitle.toUpperCase(),
            style: kLargeTextButtonStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
