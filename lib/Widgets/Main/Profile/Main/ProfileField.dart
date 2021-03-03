import 'package:flutter/material.dart';

import '../../TopBar.dart';

class ProfileField {
  Widget profileField(screenHeight, screenWidth) {
    return Container(
      child: SizedBox(
        width: screenWidth,
        height: screenHeight*0.428,
        child: ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36.0), topRight: Radius.circular(36.0)),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(52, 51, 60, 1.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: screenHeight*0.07413, bottom: screenHeight*0.025, left: screenWidth*0.0693, right: screenWidth*0.0693),
                  child: TopBar().topBar('PROFILE', 'images/bell.png', 'images/home.png', (){}, (){}),
                ),
                profile(screenHeight, screenWidth)
              ],
            ),
          ),
        ),
      ),
    );
  } 

  Widget profile(screenHeight, screenWidth, {image, name, onTap}) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: screenHeight*0.1416,
            width: screenWidth*0.3066,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: image==null?Text(""):Image.network(image),
          ),
          Padding(
            padding: EdgeInsets.only(top:screenHeight*0.01847, bottom: screenHeight*0.01847),
            child: Text("Name", style: TextStyle(color: Colors.white, fontSize: 24),),
          ),
          GestureDetector(
            child: Text("프로필 수정", style: TextStyle(color: Colors.white, fontSize: 16),),
          )
        ],
      ),
    );
  }
}