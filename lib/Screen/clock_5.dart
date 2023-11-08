// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

class clock_5 extends StatefulWidget {
  const clock_5({super.key});

  @override
  State<clock_5> createState() => _clock_5State();
}

class _clock_5State extends State<clock_5> {
  Duration duration = Duration();
  bool isStart = true;

  @override
  void initState() {
    super.initState();
    var dateTime = DateTime.now();
    duration = Duration(
        hours: dateTime.hour,
        minutes: dateTime.minute,
        seconds: dateTime.second);
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("                 clock 4"),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
              color: Color(0xFFe93974),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(10, 10),
                    blurRadius: 10),
                BoxShadow(
                    color: Colors.white70,
                    offset: Offset(-10, -10),
                    blurRadius: 10)
              ]),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: duration.inHours / 6 * pi,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 10,
                        margin: EdgeInsets.only(top: 100),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Transform.rotate(
                angle: duration.inMinutes / 30 * pi,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 7,
                        margin: EdgeInsets.only(top: 70),
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Transform.rotate(
                angle: duration.inSeconds / 30 * pi,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 4,
                        margin: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Align(
                alignment: Alignment(0, 0.5),
                child: Text(
                  "${duration.inHours % 24} : ${duration.inMinutes % 60} : ${duration.inSeconds % 60}",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 300,
                height: 300,
                child: CircularProgressIndicator(
                  value: (duration.inHours % 12) / 12,
                  color: Colors.black,
                  strokeWidth: 6,
                ),
              ),
              SizedBox(
                width: 280,
                height: 280,
                child: CircularProgressIndicator(
                  value: (duration.inMinutes % 60) / 60,
                  color: Colors.green,
                  strokeWidth: 6,
                ),
              ),
              SizedBox(
                width: 260,
                height: 260,
                child: CircularProgressIndicator(
                  value: (duration.inSeconds % 60) / 60,
                  color: Colors.yellow,
                  strokeWidth: 3,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFe93974),
        shape: CircleBorder(
          side: BorderSide(style: BorderStyle.solid, color: Colors.transparent),
        ),
        child: Icon(
          Icons.add_rounded,
          color: Color(0xFFffffff),
          size: 40,
        ),
      ),
    );
  }

  void timer() async {
    await Future.delayed(Duration(seconds: 1));
    duration = Duration(seconds: duration.inSeconds + 1);

    if (isStart) {
      setState(() {});
    }
    timer();
  }
}
