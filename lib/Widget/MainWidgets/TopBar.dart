import 'package:flutter/material.dart';

class TopBar{
  Widget topBar(screenHeight, screenWidth, onPressedGoBackArrow){
    return new Container(
      padding: EdgeInsets.only(top: screenHeight*0.07143, bottom: screenHeight*0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: left(onPressedGoBackArrow),
              )
          ),
          Expanded(
            child: Align(
                alignment: Alignment.center,
                child: new Text("PROFILE", style: TextStyle(fontSize: 18, color: Color.fromRGBO(255, 200, 200, 1.0)),)),
          ),
          Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: right(onPressedGoBackArrow),
              )
          ),
        ],
      ),
    );
  }
  Widget left(onPressedBell) {
    return GestureDetector(
      child: Image.asset('images/bell.png'),
      onTap: onPressedBell,
    );
  }  // 이부분 필요하다면 아이콘 수정 필요 -> 아이콘말고 이미지 파일로 받아야함.

  Widget right(onPressedHome){
    return GestureDetector(
      child: Image.asset('images/home.png'),
      onTap: onPressedHome,
    );
  }
}