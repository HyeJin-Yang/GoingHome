import 'package:flutter/material.dart';

class TextFields {

  Widget nameField(screenHeight, onChangeText, controller) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.107),
      child: new TextFormField(
        style: TextStyle(fontFamily: 'Manjaribold'),
        cursorColor: Color.fromRGBO(216, 216, 216, 1.0),
        controller: controller,
        decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.zero,
            hintText: "Nickname",
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
            ),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
            )
        ),
        onChanged: (text) => onChangeText(text),
      ),
    );
  }

  Widget emailField(screenHeight, onChangeText, controller) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.107),
      child: new TextFormField(
        style: TextStyle(fontFamily: 'Manjaribold'),
        cursorColor: Color.fromRGBO(216, 216, 216, 1.0),
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
            contentPadding: EdgeInsets.zero,
            hintText: "email address",
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
            ),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
            )
        ),
        onChanged: (text) => onChangeText(text),
      ),
    );
  }

  Widget introduceField(screenHeight, onChangeText, controller){
    var maxLines = 15;
    return Container(
        padding: EdgeInsets.only(top: screenHeight*0.0123),
        height: screenHeight*0.6,
        child: new TextFormField(
          style: TextStyle(fontFamily: 'Manjaribold'),
          cursorColor: Color.fromRGBO(216, 216, 216, 1.0),
          controller: controller,
          maxLines: maxLines,
          maxLength: 500,
          decoration: InputDecoration(
            hintText: "최소 10자 이상 적어주세요.",
            contentPadding: EdgeInsets.all(18),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          onChanged: (text) => onChangeText(text),
        )
    );
  }
}