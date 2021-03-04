import 'package:flutter/material.dart';
import 'package:flutter_app1/Widgets/Main/WeMet/Sub/IntroductionField.dart';
import 'package:flutter_app1/Widgets/Main/WeMet/Sub/MapField.dart';
import 'package:flutter_app1/Widgets/Main/WeMet/Sub/ProfileField.dart';
import 'package:flutter_app1/Widgets/Main/TopBar.dart';

class CoffeeProfilePage extends StatefulWidget{
  CoffeeProfilePage(this.onTapBack);
  final onTapBack;
  _CoffeeProfilePage createState() => _CoffeeProfilePage();
}

class _CoffeeProfilePage extends State<CoffeeProfilePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 51, 60, 1.0),
      body: Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.0693, left: screenWidth * 0.0693), 
        child: Column(
        children: [
          Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.07413, bottom: screenHeight * 0.025),
          child: Container(
            height: 40,
            child: TopBar().topBar("PROFILE", 'images/pink_arrow.png',
                'images/black_dotx3.png', widget.onTapBack, () {}),
          ),
        ),
        ProfileField().profile(screenHeight, screenWidth),
        Padding(
          padding: EdgeInsets.only(top:screenHeight*0.0221, bottom: screenHeight*0.0295),
          child: MapField().mapField(screenHeight, screenWidth)
          ),
        IntroductionField().introductionField(screenHeight, screenWidth)
        ],
      ),
      )
    );
  }

}