import 'package:flutter/material.dart';

import 'dart:math';

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  //deklarasi variable
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;
  //membuat function
  void rubahDadu() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
    });
    setState(() {
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Dadu'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.purple,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                'images/dice$LeftDiceNumber.png',
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
              margin: EdgeInsets.only(bottom: 1.0, right: 10.0, left: 10.0),
              child: RaisedButton(
                onPressed: () {
                  rubahDadu();
                },
                child: Text('klik'),
              ),
            ),
            Expanded(
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          ],
        ),
      ),
    );
  }
}
