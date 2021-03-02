import 'package:flutter/material.dart';
import 'package:flutter_app1/Widget/MainWidgets.dart';

import 'Setting.dart';

class MyProfile extends StatefulWidget {
  _MyProfile createState() => _MyProfile();
}

class _MyProfile extends State<MyProfile> {
  double screenHeight;
  double screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(228, 226, 229, 1.0),
      body: Column(
        children: [
          MainWidgets().profile(screenHeight, screenWidth),
          new Container (
            height: screenHeight*0.44458,
            child: new Padding(
              padding: EdgeInsets.only(top: screenHeight*0.0517),
              child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MainWidgets().mainProfileButton(screenHeight, screenWidth,
                'images/cup.png', "보유 커피 : 9잔", (){}),
                MainWidgets().mainProfileButton(screenHeight, screenWidth,
                'images/home2.png', "커피 구매하러 가기", (){}),
                MainWidgets().mainProfileButton(screenHeight, screenWidth,
                'images/wheel.png', "설정", onTapSetting),
              ],
            ),
              ),
          ),
        ],
      ),
    );
  }

  onTapSetting() {
    moveTo(Setting());
  }

  moveTo(page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}