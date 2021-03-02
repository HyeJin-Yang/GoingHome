import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Want2Alarm{
  Widget want2Alarm(screenHeight, screenWidth, pushAlarm, flowerAlarm, coffeeAlarm, onChangeAlarm){
    return Container(
        // padding: EdgeInsets.only(top: screenHeight*0.005),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mainText(),
            pushSwitch(pushAlarm, onChangeAlarm),
            flowerSwitch(flowerAlarm, onChangeAlarm),
            coffeeSwitch(coffeeAlarm, onChangeAlarm),
          ],
        ));
  }

  Widget mainText() {
    return Text(
      "알람설정",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Widget pushSwitch(pushAlarm, onChangeAlarm) {
    return Row(
      children: [
        Flexible(
          child: new Container(
            alignment: Alignment.centerLeft,
            child: Text("푸쉬알람 받기",
            style: TextStyle(fontFamily: 'Manjaribold', fontSize: 18, color: Color.fromRGBO(255, 200, 200, 1.0)), textAlign: TextAlign.left,),
          ),
        ),
        CupertinoSwitch(
            value: pushAlarm,
            trackColor: Color.fromRGBO(216, 216, 216, 1.0),
            activeColor: Color.fromRGBO(255, 200, 200, 1.0),
            onChanged: (value) => onChangeAlarm(0, value)
        )
      ],
    );
  }

  Widget flowerSwitch(flowerAlarm, onChangeAlarm) {
    return Row(
      children: [
        Flexible(
          child: new Container(
            alignment: Alignment.centerLeft,
            child: Text("꽃다발 받기",
            style: TextStyle(fontFamily: 'Manjaribold', fontSize: 18, color: Color.fromRGBO(255, 200, 200, 1.0)), textAlign: TextAlign.left,),
          ),
        ),
        CupertinoSwitch(
            value: flowerAlarm,
            trackColor: Color.fromRGBO(216, 216, 216, 1.0),
            activeColor: Color.fromRGBO(255, 200, 200, 1.0),
            onChanged: (value) => onChangeAlarm(1, value)
        )
      ],
    );
  }

  Widget coffeeSwitch(coffeeAlarm, onChangeAlarm) {
    return Row(
      children: [
        Flexible(
          child: new Container(
            alignment: Alignment.centerLeft,
            child: Text("커피 받기",
            style: TextStyle(fontFamily: 'Manjaribold', fontSize: 18, color: Color.fromRGBO(255, 200, 200, 1.0)), textAlign: TextAlign.left,),
          ),
        ),
        CupertinoSwitch(
            value: coffeeAlarm,
            trackColor: Color.fromRGBO(216, 216, 216, 1.0),
            activeColor: Color.fromRGBO(255, 200, 200, 1.0),
            onChanged: (value) => onChangeAlarm(2, value)
        )
      ],
    );
  }
}