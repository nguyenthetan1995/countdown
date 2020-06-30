import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import 'package:flutter/widgets.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circular Countdown Timer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Circular Countdown Timer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: Builder(
            builder: (BuildContext context) {
              return  CircularCountDownTimer(
                // Countdown duration in Seconds
                duration: 1800,

                // Width of the Countdown Widget
                width: MediaQuery.of(context).size.width / 2,

                // Height of the Countdown Widget
                height: MediaQuery.of(context).size.height / 2,

                // Default Color for Countdown Timer
                color: Colors.white,

                // Filling Color for Countdown Timer
                fillColor: Colors.red,

                // Border Thickness of the Countdown Circle
                strokeWidth: 4.0,

                // Text Style for Countdown Text
                textStyle: TextStyle(
                    fontSize: 10.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),

                // true for reverse countdown (max to 0), false for forward countdown (0 to max)
                isReverse: true,

                // Function which will execute when the Countdown Ends
                onComplete: () {
                  // Here, do whatever you want
                  print('Countdown Ended');
                },
              );
            },
          ),
        ),

    );
  }
}
