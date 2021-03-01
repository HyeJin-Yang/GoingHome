import 'package:flutter/material.dart';

class TopIcons{
  Widget topIcons(screenHeight, screenWidth, onPressedGoBackArrow){
    return new Container(
      padding: EdgeInsets.only(top: screenHeight*0.0825, bottom:screenHeight*0.0825, left: screenWidth*0.064, right: screenWidth*0.064),
      child: Row(
        children: [
          goBackArrow(onPressedGoBackArrow),
          Padding(padding: EdgeInsets.only(left: screenWidth*0.39, right:screenWidth*0.36)),
          closeX()
        ],
      ),
    );
  }
  Widget goBackArrow(onPressedGoBackArrow) {
    return GestureDetector(
      child: Icon(Icons.arrow_back_ios),
      onTap: onPressedGoBackArrow,
    );
  }  // 이부분 필요하다면 아이콘 수정 필요 -> 아이콘말고 이미지 파일로 받아야함.

  Widget closeX(){
    return Icon(Icons.close);
  }
}