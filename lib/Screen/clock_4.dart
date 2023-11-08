// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:async';

class Clock_4 extends StatefulWidget {
  const Clock_4({Key? key}) : super(key: key);

  @override
  _Clock_4State createState() => _Clock_4State();
}

class _Clock_4State extends State<Clock_4> {
  String formattedTime = "00:00.00";
  bool isRunning = false;
  int milliseconds = 0;
  Timer? timer;

  void _controlTimer() {
    if (!isRunning) {
      timer = Timer.periodic(Duration(milliseconds: 10), _updateTimer);
      setState(() {
        isRunning = true;
      });
    } else {
      timer?.cancel();
      setState(() {
        isRunning = false;
      });
    }
  }

  void _updateTimer(Timer timer) {
    setState(() {
      milliseconds += 10;
      int totalSeconds = (milliseconds / 1000).floor();
      int minutes = (totalSeconds / 60).floor();
      int seconds = totalSeconds % 60;
      int centiseconds = (milliseconds % 1000 / 10).floor();

      String minutesStr = minutes.toString().padLeft(2, '0');
      String secondsStr = seconds.toString().padLeft(2, '0');
      String centisecondsStr = centiseconds.toString().padLeft(2, '0');

      formattedTime = '$minutesStr:$secondsStr.$centisecondsStr';
    });
  }

  void _resetTimer() {
    timer?.cancel();
    setState(() {
      milliseconds = 0;
      formattedTime = "00:00.00";
      isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clock 4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formattedTime,
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _controlTimer,
              child: Text(isRunning ? "Stop" : "Start"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _resetTimer,
              child: Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
