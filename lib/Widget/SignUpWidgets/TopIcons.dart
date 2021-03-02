import 'package:flutter/material.dart';

class TopIcons{
  Widget topIcons(screenHeight, screenWidth, onPressedGoBackArrow){
    return new Container(
      padding: EdgeInsets.only(top: screenHeight*0.07142, bottom:screenHeight*0.07882, left: screenWidth*0.064, right: screenWidth*0.064),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child:Container(alignment: Alignment.centerLeft,child:goBackArrow(onPressedGoBackArrow))),
          Expanded(child:Container(alignment: Alignment.centerRight, child:closeX()))
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