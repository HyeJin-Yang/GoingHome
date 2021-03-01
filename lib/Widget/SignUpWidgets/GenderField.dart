import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderField {
  Widget genderField(screenHeight, screenWidth, gender, want2men, want2women, onTap, onChanged){
    return Container(
      height: screenHeight*0.4,
      width: screenWidth*0.853,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          genderImgs(gender, onTap),
          Text("Want to cross paths with...", style: TextStyle(fontFamily: 'Manjaribold', fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
          genderWantToCross("Men", want2men, want2women, onChanged),
          genderWantToCross("WoMen", want2men, want2women, onChanged),
        ],
      ),
    );
  }

  Widget genderImgs(gender, onTap) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(child: genderImg(
              gender == 0 ? "images/gender_manOButton.png" : "images/gender_manXButton.png", onTap)),
          Padding(padding: EdgeInsets.only(right: 10, left: 10),),
          Expanded(child: genderImg(gender == 1 ? "images/gender_womanOButton.png" : "images/gender_womanXButton.png", onTap)),
        ],
      ),
    );
  }

  Widget genderImg(imgName, onTap) {
    return GestureDetector(
      child: Image.asset("$imgName"),
      onTap: () => onTap(imgName),
    );
  }

  Widget genderWantToCross(text, want2men, want2women, onChanged) {
    return Row(
      children: [
        Expanded(
          child: new Container(
            alignment: Alignment.centerLeft,
            width: 100,
            child: Text("$text", style: TextStyle(fontFamily: 'Manjaribold', fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
          ),
        ),
        CupertinoSwitch(
            value: text=='Men' ? want2men : want2women,
            trackColor: Color.fromRGBO(216, 216, 216, 1.0),
            activeColor: text == "Men" ? Color.fromRGBO(59, 90, 154, 1.0) : Color.fromRGBO(255, 129, 129, 1.0),
            onChanged: (value) => onChanged(text, value)
        )
      ],
    );
  }
}