import 'package:flutter/material.dart';

class DistanceField {
  Widget distanceField(screenHeight, screenWidth, distance, onChangeDistance) {
    return Container(
      height: screenHeight*0.0714,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: mainText(),),
          Flexible(child: slider(screenWidth, distance, onChangeDistance)),
          Flexible(child: subText(distance))
        ],
      ),
    );
  }

  Widget mainText() {
    return Text(
      "거리",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Widget subText(distance) {
    return Text("$distance km", 
    style: TextStyle(color: Color.fromRGBO(255, 200, 200, 1.0), fontSize: 12),);
  }

  Widget slider(screenWidth, distance, onChangeDistance) {
    return Slider(
      value: distance,
      min: 1,
      max: 100,
      divisions: 99,
      label: distance.toString(),
      onChanged: (value) => onChangeDistance(value),
      activeColor: Color.fromRGBO(255, 129, 129, 1.0),
      inactiveColor: Colors.white,
    );
  }
}