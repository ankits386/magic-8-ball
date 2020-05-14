import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Magic 8 Ball'),
        ),
        body: MagicBallApp(),
      ),
    ));

class MagicBallApp extends StatefulWidget {
  @override
  _MagicBallAppState createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {

  int magicBallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    magicBallNumber = Random().nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball$magicBallNumber.png'))),
      ],
    );
  }
}

