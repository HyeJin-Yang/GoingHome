import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TopBar.dart';

class Profile{
  Widget profile(screenHeight, screenWidth) {
    return new SizedBox(
      width: screenWidth,
      height: screenHeight*0.428,
      child: ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36.0), bottomRight: Radius.circular(36.0)),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(52, 51, 60, 1.0),
              boxShadow: [
                BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0)
              ]
          ),
          child: new Column(
              children: [
                TopBar().topBar(screenHeight, screenWidth, (){}),
                _profile(screenHeight, screenWidth),
              ],
          ),
        ),
      ),
    );
  }

  Widget _profile(screenHeight, screenWidth) {
    return new Container(
      alignment: Alignment.bottomCenter,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          new Container(
            height: 115.0,
            width: 115.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0)
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: screenHeight*0.0184, bottom: screenHeight*0.0184),child: new Text('Name', style: TextStyle(color: Colors.white, fontSize: 24),),),
          new Padding(padding: EdgeInsets.only(bottom: screenHeight*0.0431), child: new GestureDetector(child: Text("프로필 수정", style: TextStyle(color: Colors.white, fontSize: 16)),))
        ],
      ),
    );
  }
}