import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
  double w;
  double h;
  Icon icon;
  ControlButton(this.w, this.h, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.grey.withOpacity(0.5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                gradient: LinearGradient(
                    stops: [0.1, 0.7],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0XFF0E2848), Colors.black])),
            child: icon,
          ),
        ));
  }
}
