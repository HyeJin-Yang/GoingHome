import 'package:flutter/material.dart';

class EntryWidgets {
  Widget logoImage() {
    return Container(
      height: 40,
      child: Image.asset('images/logoIcon.png')
    );
  }

  Widget logoText() {
    return Container(
        height: 50,
        child: Image.asset('images/weMet.png')
      );
  }

  Widget signInButton(screenHeight, screenWidth, buttonColor, imgPath, text, action) {
    return SizedBox(
      height: screenHeight * 0.062,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container (height: 20, child: Image.asset(imgPath),),
            Padding(padding: EdgeInsets.only(left:5, right:5),),
            Container(padding: EdgeInsets.only(top:5),
            child: Text(text, style: TextStyle(fontFamily: 'Manjaribold', fontSize: 18,
            color: text.endsWith('Number')?Colors.black:Colors.white),),)
          ],
        ),
        onPressed: action,
        color:buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90.0)),
      ),
    );
  }

  Widget policyField(screenHeight, screenWidth) {
    return Container(
      height: screenHeight*0.1,
      width: screenWidth,
      child: Image.asset('images/bySigningUpForWe.png'),
    );
  }
}