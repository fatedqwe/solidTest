import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(255),
        _random.nextInt(255),
        _random.nextInt(255),
        _random.nextInt(255),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Test Application',
          style: TextStyle(
              shadows: [
                Shadow(
                    color: Colors.black.withOpacity(0.7),
                    offset: Offset(1, 3),
                    blurRadius: 2)
              ],
              fontFamily: 'Times New Roman',
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          alignment: Alignment.center,
          child: Text(
            'Hey there',
            style: TextStyle(
                shadows: [
                  Shadow(
                      color: Colors.black.withOpacity(0.7),
                      offset: Offset(1, 3),
                      blurRadius: 2)
                ],
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
