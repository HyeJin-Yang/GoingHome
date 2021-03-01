import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignUpWidgets/BirthField.dart';
import 'SignUpWidgets/CurrentPosition.dart';
import 'SignUpWidgets/GenderField.dart';
import 'SignUpWidgets/ProfilePictureField.dart';
import 'SignUpWidgets/TextFields.dart';
import 'SignUpWidgets/TopIcons.dart';

class SignUpWidgets {
  Widget topIcons(screenHeight, screenWidth, onPressedGoBackArrow) {
    return TopIcons().topIcons(screenHeight, screenWidth, onPressedGoBackArrow);
  }

  Widget currentPosition(curIndex, screenHeight, screenWidth) {
    return CurrentPosition().currentPosition(curIndex, screenHeight, screenWidth);
  }

  Widget mainText(curIndex, screenHeight){
    List<String> text = ["What's your name?", "What's your email?", "You are ...",
      "What's your date of birth?", "Pick your profile pictures", "Introduce yourself"];
    return Container(
        child:Padding(
            padding: EdgeInsets.only(top: screenHeight*0.018),
            child: Text(text[curIndex], style: TextStyle(fontFamily: 'Manjaribold', fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,))
    );
  }

  Widget userInputField(curIndex, screenHeight, screenWidth, args){
      List<Widget> inputFields = [
        TextFields().nameField(args['name'][0], args['name'][1], args['name'][2]),
        TextFields().emailField(args['email'][0], args['email'][1], args['email'][2]),
        GenderField().genderField(args['gender'][0], args['gender'][1], args['gender'][2], args['gender'][3], args['gender'][4], args['gender'][5], args['gender'][6]),
        BirthField().birthField(args['birth'][0], args['birth'][1], args['birth'][2]),
        ProfilePictureField(args['profile'][0]),
        TextFields().introduceField(args['introduction'][0], args['introduction'][1], args['introduction'][2])];
      return inputFields[curIndex];
    }
}