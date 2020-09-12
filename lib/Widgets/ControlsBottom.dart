import 'package:flutter/material.dart';

class ControlsBottom extends StatelessWidget {
  const ControlsBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40)),
                  border: Border.all(
                      width: 3,
                      color: Colors.blue.withOpacity(0.5),
                      style: BorderStyle.solid)),
              child: Icon(
                Icons.repeat,
                color: Colors.white,
              )),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.1, 0.7],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0XFF0E2848), Colors.black]),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                border: Border.all(
                    width: 3,
                    color: Colors.blue.withOpacity(0.5),
                    style: BorderStyle.solid)),
            child: Icon(
              Icons.shuffle,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
