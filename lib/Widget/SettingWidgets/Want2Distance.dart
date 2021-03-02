import 'package:flutter/material.dart';

class Want2Distance {
  Widget want2Distance(screenDistance, screenWidth, double distance, onChangeDistance) {
    return Container(
        // padding: EdgeInsets.only(top: screenDistance * 0.005),
        height: screenDistance * 0.15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mainText(),
            slider(screenWidth, distance, onChangeDistance),
            subText(distance)
          ],
        ));
  }

  Widget mainText() {
    return Text(
      "거리 설정",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Widget subText(distance) {
    return Text(
      "$distance km",
      style: TextStyle(color: Color.fromRGBO(255, 200, 200, 1.0), fontSize: 12),
    );
  }

  Widget slider(
      screenWidth, distance, onChangeDistance) {
    return Slider(
      min: 0,
      max: 100,
      divisions: 100,
      value: distance,
      label: distance.toString(),
      onChanged: (values) => onChangeDistance(values),
      activeColor: Color.fromRGBO(255, 129, 129, 1.0),
    );
  }
}