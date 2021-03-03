import 'package:flutter/material.dart';

class TopBar {
  Widget topBar(text, leftImg, rightImg, leftAction, rightAction) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Container(alignment: Alignment.centerLeft, child: topImage(leftImg, leftAction),),),
          Expanded(child: Text("$text", style: TextStyle(color: Color.fromRGBO(255, 126, 126, 1.0), fontSize: 18, ),textAlign: TextAlign.center,),),
          Expanded(child: Container(alignment: Alignment.centerRight, child: topImage(rightImg, rightAction),),)
        ],
      ),
    );
  }
  
  Widget topImage(image, action) {
    return GestureDetector(
      child: Image.asset(image),
      onTap: action
    );
  }
}