import 'package:flutter/material.dart';
import 'package:flutter_app1/Widgets/Main/BottomNavigationBar.dart';

import 'Profile/ProfileBasePage.dart';
import 'WeMet/WeMetBasePage.dart';

class BasePage extends StatefulWidget{
  _BasePage createState() => _BasePage();
}

class _BasePage extends State<BasePage> {
  int currentIndex = 3;
  var color;
  @override
  Widget build(BuildContext context) {
    var pages = [WeMetBasePage(), 1, 2, ProfileBasePage(onTapSetting)];
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(228, 226, 229, 1.0),
      bottomNavigationBar: CustomBottomNavigationBar().bottomNavigationBar(screenHeight, screenWidth, currentIndex, onTapBottomNavigationBar, color:color),
      body: pages[currentIndex],
    );
  }

  onTapBottomNavigationBar(value) {
    setState(() {
      this.currentIndex = value;
      
      if (this.currentIndex != 3)
        this.color = Color.fromRGBO(52, 51, 60, 1.0);
      else
        this.color = null;
    });
  }

  onTapSetting(value) {
    setState(() {
      if (value == 1)
        this.color = Color.fromRGBO(52, 51, 60, 1.0);
      else
        this.color = null;
    });
  }
}