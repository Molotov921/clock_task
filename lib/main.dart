// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unnecessary_import, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'Screen/clock_2.dart';
import 'Screen/clock_3.dart';
import 'Screen/clock_4.dart';
import 'Screen/clock_5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          "CLOCK",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      drawer: NavigationDrawer(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFe93974),
            ),
            accountName: Text("Neel Kalariya"),
            accountEmail: Text("kalarianeel249@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://lh3.googleusercontent.com/a/ACg8ocIbB3Msrb90avMuPrxnRp0gI_9YGwHGiVVr-XrzR55l7w=s96-c-rg-br100"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Home",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.home),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "About",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.error),
              ],
            ),
          ),
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
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Settings",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.settings),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Duration duration = Duration(seconds: 1);
          Duration duration1 = Duration(seconds: 1);
          Duration duration2 = Duration(seconds: 1);
          startTimer();
        },
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment(0, 0),
            height: 250,
            width: double.infinity,
            margin: EdgeInsets.all(83),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
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
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  WidgetSpan(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on_rounded,
                            size: 20, color: Colors.black),
                        Text(
                          "London, UK",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Dakar",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      alignment: Alignment(0, 0),
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(250),
                          border: Border.all(color: Colors.black)),
                    ),
                    Text(
                      "${duration.inMinutes % 60}:${duration.inSeconds % 60}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Tokyo",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      alignment: Alignment(0, 0),
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(250),
                          border: Border.all(color: Colors.black)),
                    ),
                    Text(
                      "${duration1.inMinutes % 60}:${duration1.inSeconds % 60}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Queensland",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      alignment: Alignment(0, 0),
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(250),
                          border: Border.all(color: Colors.black)),
                    ),
                    Text(
                      "${duration2.inMinutes % 60}:${duration2.inSeconds % 60}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
