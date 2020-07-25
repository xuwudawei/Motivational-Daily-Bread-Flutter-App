import 'package:flutter/material.dart';
import './textcontroller.dart';
import './data.dart';

class TextDisplay extends StatefulWidget {
  @override
  _TextDisplayState createState() => _TextDisplayState();
}

class _TextDisplayState extends State<TextDisplay> {
  int tog = 0;

  List text = [
    '"All our dreams can come true, if we have the courage to pursue them.” – Walt Disney.',
    '“If people are doubting how far you can go, go so far that you can’t hear them anymore.” – Michele Ruiz',
    'We need to accept that we won’t always make the right decisions, that we’ll screw up royally sometimes – understanding that failure is not the opposite of success, it’s part of success.” – Arianna Huffington',
    '“Everything you can imagine is real.”― Pablo Picasso',
    '“Do one thing every day that scares you.”― Eleanor Roosevelt',
    '“Smart people learn from everything and everyone, average people from their experiences, stupid people already have all the answers.” – Socrates',
    '“Do what you feel in your heart to be right – for you’ll be criticized anyway.”― Eleanor Roosevelt',
    '“Whatever you are, be a good one.” ― Abraham Lincoln',
    '“Magic is believing in yourself. If you can make that happen, you can make anything happen.” – Johann Wolfgang Von Goethe',
    '“So. Monday. We meet again. We will never be friends—but maybe we can move past our mutual enmity toward a more-positive partnership.” ― Julio-Alexi Genao',
  ];

  void pressMe() {
    if (tog == 9) {
      setState(() {
        tog = 0;
      });
    } else {
      setState(() {
        tog++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image.jpg"), fit: BoxFit.cover)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Center(
            child: Data(text[tog]),
          ),
          SizedBox(
            height: 30,
          ),
          Changer(pressMe),
        ],
      ),
    );
  }
}
