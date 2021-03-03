import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmField {
  Widget alarmField(screenHeight, screenWidth, pushAlarm, flowerAlarm, coffeeAlarm, onChangeAlarm) {
    var alarms = [pushAlarm, flowerAlarm, coffeeAlarm];
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mainText(),
          for (int i=0; i< alarms.length; i++)
            alarmSwitch(i, alarms[i], onChangeAlarm)
        ],
      ),
    );
  }

  Widget mainText() {
    return Text(
      "알람설정",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Widget alarmSwitch(i, alarm, onChangeAlarm) {
    String text = i==0?"푸쉬알람 받기":i==1?"꽃다발 받기":"커피 받기";
    return Row(
      children: [
        Flexible(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text("$text",
            style: TextStyle(fontFamily: 'Manjaribold', fontSize: 18,
            color: Color.fromRGBO(255, 200, 200, 1.0)),textAlign: TextAlign.left,),
          ),
        ),
        CupertinoSwitch(
          value: alarm,
          trackColor: Color.fromRGBO(216, 216, 216, 1.0),
          activeColor: Color.fromRGBO(255, 200, 200, 1.0),
          onChanged: (value) => onChangeAlarm(i, value),
        )
      ],
    );
  }
}