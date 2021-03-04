import 'package:flutter/material.dart';

class ProfileField {
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
          textField(screenHeight)
        ],
      ),
    );
  }

  Widget textField(screenHeight) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: screenHeight*0.0184, bottom: screenHeight*0.0184),
          child: Text("로즈", style: TextStyle(color: Colors.white, fontSize: 18),)
        ),
        Text("나이: 27", style: TextStyle(color: Colors.white, fontSize: 16)),
        Text("마주친 횟수: 10", style: TextStyle(color: Colors.white, fontSize: 16)),
        Text("마지막 순간: 2020.08.01 20:45", style: TextStyle(color: Colors.white, fontSize: 16)),
      ],
    );
  }
}