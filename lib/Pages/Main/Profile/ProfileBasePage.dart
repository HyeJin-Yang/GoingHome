import 'package:flutter/material.dart';

import 'Main/ProfileMainPage.dart';
import 'Sub/ProfileSettingPage.dart';

class ProfileBasePage extends StatefulWidget {
  ProfileBasePage(this.onTapSetting);
  final onTapSetting;
  _ProfileBasePage createState() => _ProfileBasePage();
}

class _ProfileBasePage extends State<ProfileBasePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var pages = [
    ProfileMainPage(onTap),
    ProfileSettingPage(onTap)
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(228, 226, 229, 1.0),
      body: pages[currentIndex],
    );
  }

  onTap(value) {
    setState(() {
      this.currentIndex = value;
      widget.onTapSetting(value);
    });
  }
}