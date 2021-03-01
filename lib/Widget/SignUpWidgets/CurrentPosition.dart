import 'package:flutter/material.dart';

class CurrentPosition {
  Widget currentPosition(curIndex, screenHeight, screenWidth) {
    return Row(
      children: [
        for (int i = 0; i < 6; i++)
          curIndex == i
              ? mainImg(curIndex, screenHeight, screenWidth)
              : blackCircle(screenHeight, screenWidth)
      ],
    );
  }

  Widget mainImg(curIndex, screenHeight, screenWidth) {
    List<String> mainimageuse = [
      'images/nameCardIcon.png',
      'images/emailIcon.png',
      'images/sexIcon.png',
      'images/birthIcon.png',
      'images/profilePicture.png',
      'images/introduceIcon.png'
    ];
    return Container(
      height: screenHeight * 0.046,
      width: screenWidth * 0.101,
      child: Image.asset(mainimageuse[curIndex]),
    );
  }

  Widget blackCircle(screenHeight, screenWidth) {
    return Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.013, right: screenWidth * 0.013),
        child: Container(
          height: screenHeight * 0.024,
          width: screenWidth * 0.024,
          decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle
          ),
        )
    );
  }
}