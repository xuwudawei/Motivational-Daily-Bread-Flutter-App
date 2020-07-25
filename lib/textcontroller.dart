import 'package:flutter/material.dart';

class Changer extends StatefulWidget {
  var pressMe;
  Changer(this.pressMe);
  @override
  _ChangerState createState() => _ChangerState(pressMe);
}

class _ChangerState extends State<Changer> {
  var pressMe;
  _ChangerState(this.pressMe);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: pressMe,
      child: Text('Change Quotes', style: TextStyle(fontSize: 20)),
      color: Colors.redAccent,
      textColor: Colors.white,
      highlightColor: Colors.blue,
    );
  }
}
