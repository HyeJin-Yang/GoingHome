import 'package:flutter/material.dart';

class Buttons{
  Widget entrySignIn(var screenHeight, var screenWidth, var color, String imgPath, String text, var onPressAction, {fontColor=Colors.white}) {
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
                child:Text(text, style:TextStyle(fontFamily:'Manjaribold', fontSize:18, color:fontColor)),
              ),
            ],
          ),
          onPressed: onPressAction,
          color:color,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90.0),
          ),
        ),
      ),
    );
  }
}