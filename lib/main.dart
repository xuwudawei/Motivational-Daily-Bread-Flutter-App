import 'package:flutter/material.dart';
import './textdisplay.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('MY DAILY BREAD'),
        ),
        body: TextDisplay(),
      ),
    );
  }
}
