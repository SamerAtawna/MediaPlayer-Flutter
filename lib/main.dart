import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

import 'Functions/GetVol.dart';
import 'Widgets/ControlButton.dart';
import 'Widgets/ControlsBottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  double barIndex = 2;
  double angle = 1.6;

  getAngle() {
    return angle += 0.1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: [0.1, 0.7],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0XFF262626), Colors.black])),
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.keyboard_backspace,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Lowlife',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue[100],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Poppy",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            getVol(barIndex),
            FlutterSlider(
              values: [barIndex],
              max: 50,
              min: 0,
              tooltip: FlutterSliderTooltip(disabled: true),
              onDragging: (handlerIndex, lowerValue, upperValue) {
                setState(() {
                  barIndex = lowerValue;
                });
              },
              handler: FlutterSliderHandler(
                decoration: BoxDecoration(),
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      border: Border.all(color: Colors.blueAccent),
                      gradient: LinearGradient(
                          stops: [0.1, 0.7],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0XFF0E2848), Colors.black])),
                  padding: EdgeInsets.all(5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ControlButton(
                        70, 70, Icon(Icons.skip_previous, color: Colors.white)),
                    ControlButton(
                        100, 100, Icon(Icons.play_arrow, color: Colors.white)),
                    ControlButton(
                        70, 70, Icon(Icons.skip_next, color: Colors.white))
                  ]),
            ),
            SizedBox(height: 30),
            ControlsBottom()
          ],
        ),
      ),
    ));
  }
}
