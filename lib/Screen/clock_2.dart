// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clock_task/Screen/clock_3.dart';
import 'package:clock_task/Screen/clock_4.dart';
import 'package:clock_task/Screen/clock_5.dart';
import 'package:flutter/material.dart';

class Clock_2 extends StatefulWidget {
  const Clock_2({super.key});

  @override
  State<Clock_2> createState() => _Clock_2State();
}

class _Clock_2State extends State<Clock_2> {
  Duration duration = Duration();
  Duration duration1 = Duration();
  Duration duration2 = Duration();

  @override
  Widget build(BuildContext context) {
    void startTimer() async {
      await Future.delayed(Duration(seconds: 1));
      duration = Duration(seconds: duration.inSeconds + 1);
      duration1 = Duration(seconds: duration1.inSeconds + 2);
      duration2 = Duration(seconds: duration2.inSeconds + 4);
      startTimer();
      setState(() {});
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Clock",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.settings_outlined,
              size: 30,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      drawer: NavigationDrawer(
        children: [
          SizedBox(height: 1, width: double.infinity),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Clock_2();
                  },
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clock 2",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.access_time),
                ],
              ),
            ),
          ),
          SizedBox(height: 1, width: double.infinity),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Clock_3();
                  },
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clock 3",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.watch_outlined),
                ],
              ),
            ),
          ),
          SizedBox(height: 1, width: double.infinity),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Clock_4();
                  },
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clock 4",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.access_time),
                ],
              ),
            ),
          ),
          SizedBox(height: 1, width: double.infinity),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return clock_5();
                  },
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clock 5",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.access_time),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment(0, 0),
              height: 250,
              width: double.infinity,
              margin: EdgeInsets.all(83),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFe93974), width: 10),
                  borderRadius: BorderRadius.circular(250)),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "${duration.inMinutes % 60}:${duration.inSeconds % 60}\n",
                      style: TextStyle(fontSize: 70, color: Colors.black),
                    ),
                    TextSpan(
                      text: "Thursday 12, October\n",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.centerRight,
              // color: Colors.pink,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 2),
                      Text(
                        "Dakar",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 12,
                      ),
                      Text(
                        "${duration1.inMinutes % 60}:${duration1.inSeconds % 60}",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 2),
                      Text(
                        "Tokyo",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 12,
                      ),
                      Text(
                        "${duration2.inMinutes % 60}:${duration2.inSeconds % 60}",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 2),
                      Text(
                        "Queensland",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 8,
                      ),
                      Text(
                        "${duration1.inMinutes % 60}:${duration1.inSeconds % 60}",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 2),
                      Text(
                        "Barcelona",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 9,
                      ),
                      Text(
                        "${duration2.inMinutes % 60}:${duration2.inSeconds % 60}",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: InkWell(
                onTap: () async {
                  startTimer();
                },
                child: Container(
                  alignment: Alignment(0, 0),
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xFFe93974),
                  ),
                  child: Text(
                    "Set Clock",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
              ),
            ),
          ),
        ],
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
}
