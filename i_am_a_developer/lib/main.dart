import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          centerTitle: false,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          title: const Text('I am a Developer'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Image.asset('images/giphy.gif'),
        ),
      ),
    ),
  );
}
