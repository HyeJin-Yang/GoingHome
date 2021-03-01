import 'package:flutter/material.dart';
import 'package:wemet/Widget/MainWidgets.dart';
import 'MainPages/MyProfile.dart';

class MainPage extends StatefulWidget {
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  double screenHeight;
  double screenWidth;
  int currentPage = 3;
  var pages = ['0', '1', '2', MyProfile()];
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: MainWidgets().bottomNavigator(screenHeight, screenWidth, currentPage),
      backgroundColor: Color.fromRGBO(228, 226, 229, 1.0),
      body: pages[currentPage],
    );
  }

}