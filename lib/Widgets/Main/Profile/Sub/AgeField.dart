import 'package:flutter/material.dart';

class AgeField {
  Widget ageField(screenHeight, screenWidth, minAge, maxAge, onChangeAge) {
    return Container(
      height: screenHeight*0.0714,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: mainText(),),
          Flexible(child: slider(screenWidth, minAge, maxAge, onChangeAge)),
          Flexible(child: subText(minAge, maxAge))
        ],
      ),
    );
  }

  Widget mainText() {
    return Text(
      "나이",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Widget subText(min, max) {
    return Text("${min.round()} ~ ${max.round()} 세", 
    style: TextStyle(color: Color.fromRGBO(255, 200, 200, 1.0), fontSize: 12),);
  }

  Widget slider(screenWidth, minAge, maxAge, onChangeAge) {
    RangeValues _currentRange = RangeValues(minAge, maxAge);
    return RangeSlider(
      values: _currentRange,
      min: 15,
      max: 45,
      divisions: 30,
      labels: RangeLabels(
        _currentRange.start.round().toString(),
        _currentRange.end.round().toString()
      ),
      onChanged: (values) => onChangeAge(values),
      activeColor: Color.fromRGBO(255, 129, 129, 1.0),
      inactiveColor: Colors.white,
    );
  }
}