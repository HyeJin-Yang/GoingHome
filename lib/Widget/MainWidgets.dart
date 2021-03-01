import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainWidgets/BottomNavigator.dart';
import 'MainWidgets/Profile.dart';

class MainWidgets{
  Widget profile(screenHeight, screenWidth) {
    return Profile().profile(screenHeight, screenWidth);
  }

  Widget bottomNavigator(screenHeight, screenWidth, currentPage) {
    return BottomNavigator().bottomNavigator(screenHeight, screenWidth, currentPage);
  }

  Widget mainProfileButton(screenHeight, screenWidth, imgPath, text, onPressAction) {
    return Padding(
      padding: EdgeInsets.only(right: screenWidth*0.114, left: screenWidth*0.114, bottom: screenHeight*0.012),
      child: SizedBox(
        height: screenHeight * 0.062,
        child: RaisedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20,
                child:Image.asset(imgPath),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                padding: EdgeInsets.only(top: 5),
                child:Text(text, style:TextStyle(fontFamily:'Manjaribold', fontSize:18, color:Colors.black)),
              ),
            ],
          ),
          onPressed: onPressAction,
          color:Colors.white,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90.0),
          ),
        ),
      ),
    );
  }
}