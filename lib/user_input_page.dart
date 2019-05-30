import 'package:flutter/material.dart';

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
                child: ReusableCard(bgColor: Color(0xFF1D1E33)),
              ),
              Expanded(
                child: ReusableCard(bgColor: Color(0xFF1D1E33)),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(bgColor: Color(0xFF1D1E33)),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(bgColor: Color(0xFF1D1E33)),
              ),
              Expanded(
                child: ReusableCard(bgColor: Color(0xFF1D1E33)),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color bgColor;
  ReusableCard({@required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
