import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class UserActionButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  UserActionButton({this.onTap, this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
