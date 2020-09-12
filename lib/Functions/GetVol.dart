import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

CircleList getVol(barIndex) {
  double angle = 0;
  return CircleList(
    childrenPadding: 0,
    outerRadius: 150,
    showInitialAnimation: true,
    centerWidget: Container(
      height: 160,
      width: 160,
      padding: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          border: Border.all(color: Colors.blueAccent),
          gradient: LinearGradient(
              stops: [0.1, 0.7],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0XFF0E2848), Colors.black])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  (barIndex.round() * 2).toString() + '%',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    "Volume",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
    origin: Offset(0, 0),
    children: List.generate(50, (index) {
      return Transform.rotate(
        angle: angle += 7 * math.pi / 180,
        child: Icon(
          Icons.remove,
          color: index < barIndex ? Colors.blue : Colors.grey,
        ),
      );
    }),
  );
}
