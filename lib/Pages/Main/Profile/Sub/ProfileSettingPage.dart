import 'package:flutter/material.dart';
import 'package:flutter_app1/Widgets/Main/BottomNavigationBar.dart';
import 'package:flutter_app1/Widgets/Main/Profile/Sub/AgeField.dart';
import 'package:flutter_app1/Widgets/Main/Profile/Sub/AlarmField.dart';
import 'package:flutter_app1/Widgets/Main/Profile/Sub/DistanceField.dart';
import 'package:flutter_app1/Widgets/Main/Profile/Sub/GenderField.dart';
import 'package:flutter_app1/Widgets/Main/Profile/Sub/HeightField.dart';
import 'package:flutter_app1/Widgets/Main/TopBar.dart';
import 'package:flutter_app1/Widgets/SignIn/ProfilePictureField.dart';

class ProfileSettingPage extends StatefulWidget {
  ProfileSettingPage(this.onTap);
  final onTap;
  _ProfileSettingPage createState() => _ProfileSettingPage();
}

class _ProfileSettingPage extends State<ProfileSettingPage> {
  var color = Color.fromRGBO(52, 51, 60, 1.0);
  int gender = 0;

  double minAge = 22;
  double maxAge = 32;

  double minHeight = 160.0;
  double maxHeight = 170.0;

  double distance = 1;

  bool pushAlarm = false;
  bool flowerAlarm = false;
  bool coffeeAlarm = false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: color,
        body: Container(
          padding: EdgeInsets.only(
              right: screenWidth * 0.0693, left: screenWidth * 0.0693),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.07413, bottom: screenHeight * 0.025),
                child: Container(
                  height: 40,
                  child: TopBar().topBar("설정", 'images/pink_arrow.png',
                      'images/black_dotx3.png', () => widget.onTap(0), () {}),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: screenHeight*0.0307),),
              GenderField().genderField(screenHeight, screenWidth, gender, onChangeGender),
              Padding(padding: EdgeInsets.only(bottom: screenHeight*0.0307),),
              AgeField().ageField(screenHeight, screenWidth, minAge, maxAge, onChangeAge),
              Padding(padding: EdgeInsets.only(bottom: screenHeight*0.0307),),
              HeightField().heightField(screenHeight, screenWidth, minHeight, maxHeight, onChangeHeight),
              Padding(padding: EdgeInsets.only(bottom: screenHeight*0.0307),),
              DistanceField().distanceField(screenHeight, screenWidth, distance, onChangeDistance),
              Padding(padding: EdgeInsets.only(bottom: screenHeight*0.0307),),
              AlarmField().alarmField(screenHeight, screenWidth, pushAlarm, flowerAlarm, coffeeAlarm, onChangeAlarm)
            ],
          ),
        ));
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

  onChangeAlarm(i, value) {
    setState(() {
      if (i==0) {
        this.pushAlarm = value;
      } else if (i==1) {
        this.flowerAlarm = value;
      } else {
        this.coffeeAlarm = value;
      }
    });
  }
}
