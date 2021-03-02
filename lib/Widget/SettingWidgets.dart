import 'package:flutter/material.dart';
import 'SettingWidgets/TopBar.dart';
import 'SettingWidgets/Want2Age.dart';
import 'SettingWidgets/Want2Alarm.dart';
import 'SettingWidgets/Want2Distance.dart';
import 'SettingWidgets/Want2Gender.dart';
import 'SettingWidgets/Want2Height.dart';

class SettingWidgets {
  Widget topBar(screenHeight, screenWidth, acction){
    return TopBar().topBar(screenHeight, screenWidth, acction);
  }

  Widget want2Gender(screenHeight, screenWidth, gender, action) {
    return Want2Gender().want2Gender(screenHeight, screenWidth, gender, action);
  }

  Widget want2Age(screenHeight, screenWidth, minAge, maxAge, onChangeAge) {
    return Want2Age().want2Age(screenHeight, screenWidth, minAge, maxAge, onChangeAge);
  }

  Widget want2Height(screenHeight, screenWidth, minHeight, maxHeight, onChangeHeight) {
    return Want2Height().want2Height(screenHeight, screenWidth, minHeight, maxHeight, onChangeHeight);
  }

  Widget want2Distance(screenHeight, screenWidth, distance, onChangeDistance) {
    return Want2Distance().want2Distance(screenHeight, screenWidth, distance, onChangeDistance);
  }

  Widget want2Alarm(screenHeight, screenWidth, pushAlarm, flowerAlarm, coffeeAlarm, onChangeAlarm) {
    return Want2Alarm().want2Alarm(screenHeight, screenWidth, pushAlarm, flowerAlarm, coffeeAlarm, onChangeAlarm);
  }
}