import 'package:flutter/material.dart';

class Want2Height {
  Widget want2Height(
      screenHeight, screenWidth, double minHeight, double maxHeight, onChangeHeight) {
    return Container(
        // padding: EdgeInsets.only(top: screenHeight*0.005),
        height: screenHeight * 0.15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mainText(),
            slider(screenWidth, minHeight, maxHeight, onChangeHeight),
            subText(minHeight, maxHeight)
          ],
        ));
  }

  Widget mainText() {
    return Text(
      "키",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Widget subText(minHeight, maxHeight) {
    return Text(
      "$minHeight ~ $maxHeight cm",
      style: TextStyle(color: Color.fromRGBO(255, 200, 200, 1.0), fontSize: 12),
    );
  }

  Widget slider(screenWidth, double minHeight, double maxHeight, onChangeHeight) {
    RangeValues _currentRange = RangeValues(minHeight, maxHeight);
    return RangeSlider(
      values: _currentRange,
      min: 145,
      max: 190,
      divisions: 44,
      labels: RangeLabels(_currentRange.start.round().toString(),
          _currentRange.end.round().toString()),
      onChanged: (values) => onChangeHeight(values),
      activeColor: Color.fromRGBO(255, 129, 129, 1.0),
    );
  }
}
