import 'package:flutter/material.dart';

class HeightField {
  Widget heightField(screenHeight, screenWidth, minHeight, maxHeight, onChangeHeight) {
    return Container(
      height: screenHeight*0.0714,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: mainText(),),
          Flexible(child: slider(screenWidth, minHeight, maxHeight, onChangeHeight)),
          Flexible(child: subText(minHeight, maxHeight))
        ],
      ),
    );
  }

  Widget mainText() {
    return Text(
      "키",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Widget subText(min, max) {
    return Text("${min.round()} ~ ${max.round()} cm", 
    style: TextStyle(color: Color.fromRGBO(255, 200, 200, 1.0), fontSize: 12),);
  }

  Widget slider(screenWidth, minHeight, maxHeight, onChangeHeight) {
    RangeValues _currentRange = RangeValues(minHeight, maxHeight);
    return RangeSlider(
      values: _currentRange,
      min: 145,
      max: 190,
      divisions: 44,
      labels: RangeLabels(
        _currentRange.start.round().toString(),
        _currentRange.end.round().toString()
      ),
      onChanged: (values) => onChangeHeight(values),
      activeColor: Color.fromRGBO(255, 129, 129, 1.0),
      inactiveColor: Colors.white,
    );
  }
}