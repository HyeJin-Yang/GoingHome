import 'package:flutter/material.dart';
import 'package:flutter_app1/Widget/MainWidgets.dart';
import 'package:flutter_app1/Widget/SettingWidgets.dart';

class Setting extends StatefulWidget {
  _Setting createState() => _Setting();
}

class _Setting extends State<Setting> {
  double screenHeight;
  double screenWidth;
  int currentPage = 3;

  int gender=0;

  double minAge=22.0;
  double maxAge=32.0;

  double minHeight=160.0;
  double maxHeight=170.0;

  double distance=1.0;

  bool pushAlarm=false;
  bool flowerAlarm=false;
  bool coffeeAlarm=false;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: MainWidgets().bottomNavigator(screenHeight, screenWidth, currentPage),
      backgroundColor: Color.fromRGBO(52, 51, 60, 1.0),
      body: Container(
        padding: EdgeInsets.only(right: screenWidth*0.0693, left: screenWidth*0.0693),
        child: new ListView(
          children: [
            new Column(
              children: [
                SettingWidgets().topBar(screenHeight, screenWidth, (){}),
                SettingWidgets().want2Gender(screenHeight, screenWidth, gender, onChangeGender),
                SettingWidgets().want2Age(screenHeight, screenWidth, minAge, maxAge, onChangeAge),
                SettingWidgets().want2Height(screenHeight, screenWidth, minHeight, maxHeight, onChangeHeight),
                SettingWidgets().want2Distance(screenHeight, screenWidth, distance, onChangeDistance),
                SettingWidgets().want2Alarm(screenHeight, screenWidth, pushAlarm, flowerAlarm, coffeeAlarm, onChangeAlarm),
              ],
            )
          ],
        ),
      )
    );
  }

  onChangeGender(value) {
    setState(() {
      this.gender = value;
    });
  }

  onChangeAge(values) {
    setState(() {
      this.minAge = values.start;
      this.maxAge = values.end;
    });
  }

  onChangeHeight(values) {
    setState(() {
      this.minHeight = values.start;
      this.maxHeight = values.end;
    });
  }

  onChangeDistance(value) {
    setState(() {
      this.distance = value;
    });
  }

  onChangeAlarm(id, value) {
    setState(() {
      if (id == 0) {
        pushAlarm = value;
      } else if (id == 1) {
        flowerAlarm = value;
      } else {
        coffeeAlarm = value;
      }
    });
  }
}