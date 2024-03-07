import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xDF029EEC),
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          title: Text('Ask Me Anything'),
          backgroundColor: Color(0xDF01324B),
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  void randomBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                randomBallNumber();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
