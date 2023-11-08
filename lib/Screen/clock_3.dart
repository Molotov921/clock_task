// ignore_for_file: camel_case_types, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Clock_3 extends StatefulWidget {
  const Clock_3({super.key});

  @override
  State<Clock_3> createState() => _Clock_3State();
}

class _Clock_3State extends State<Clock_3> {
  Duration duration = Duration();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() async {
    await Future.delayed(Duration(seconds: 1));
    duration = Duration(seconds: duration.inSeconds + 1);
    startTimer();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: Text("CLOCK"),
        ),
        // centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 230,
                  width: 230,
                  padding: EdgeInsets.only(top: 60),
                  margin: EdgeInsets.only(
                      top: 100, left: 50, right: 50, bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12, width: 20),
                    borderRadius: BorderRadius.circular(130),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFedecea),
                          blurStyle: BlurStyle.inner,
                          spreadRadius: 1,
                          blurRadius: 10)
                    ],
                  ),
                  child: Text(
                    "${duration.inMinutes % 60}:${duration.inSeconds % 60}\n",
                    style: TextStyle(fontSize: 60, color: Colors.black),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "THURSDAY 12 \n",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        TextSpan(
                          text: "OCTOBER",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.centerRight,
              color: Color(0xFFe93974),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Container(
                        alignment: Alignment(0, 0),
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(250),
                            border: Border.all(color: Colors.white)),
                      ),
                      Spacer(),
                      Text(
                        "Tokyo",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Spacer(
                        flex: 12,
                      ),
                      Text(
                        "${duration.inMinutes % 60}:${duration.inSeconds % 60}",
                        style: TextStyle(fontSize: 20, color: Colors.white),
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
                      Spacer(
                        flex: 2,
                      ),
                      Container(
                        alignment: Alignment(0, 0),
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(250),
                            border: Border.all(color: Colors.white)),
                      ),
                      Spacer(),
                      Text(
                        "Queensland",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Spacer(
                        flex: 9,
                      ),
                      Text(
                        "${duration.inMinutes % 60}:${duration.inSeconds % 60}",
                        style: TextStyle(fontSize: 20, color: Colors.white),
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
                      Spacer(
                        flex: 2,
                      ),
                      Container(
                        alignment: Alignment(0, 0),
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(250),
                            border: Border.all(color: Colors.white)),
                      ),
                      Spacer(),
                      Text(
                        "Barcelona",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Spacer(
                        flex: 10,
                      ),
                      Text(
                        "${duration.inMinutes % 60}:${duration.inSeconds % 60}",
                        style: TextStyle(fontSize: 20, color: Colors.white),
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
        ],
      ),
    );
  }
}
