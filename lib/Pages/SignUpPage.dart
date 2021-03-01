import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Widget/SignUpWidgets.dart';

class SignUpPage extends StatefulWidget {
  _SignUpPage createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  final controller = TextEditingController();
  double screenHeight;
  double screenWidth;

  int curIndex = 0;

  String name;
  String email;
  int gender = 0;
  bool want2men = false;
  bool want2women = false;

  String birthday = DateTime.now().toIso8601String();
  var image;
  String introduction;

  var args;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    args = {
      'name': [screenHeight, onChangeName, controller],
      'email': [screenHeight, onChangeEmail, controller],
      'gender': [screenHeight, screenWidth, gender, want2men, want2women, onTapGender, onChangeWant2Cross],
      'birth': [screenHeight, screenWidth, onChangeTime],
      'profile': [onTopProfilePicture],
      'introduction': [screenHeight, onChangeIntroduction, controller]
    };
    return new Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: new FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(255, 200, 200, 1.0),
          onPressed: onPressedFloatButton,
          child: Icon(Icons.arrow_forward_ios),
        ),
        body: new ListView(
          children: [
            new Column(
              children: [
                SignUpWidgets().topIcons(screenHeight, screenWidth, onPressedGoBackArrow),
                new Container(
                  padding: EdgeInsets.only(left: screenWidth*0.072, right:screenWidth*0.072),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SignUpWidgets().currentPosition(curIndex, screenHeight, screenWidth),
                        SignUpWidgets().mainText(curIndex, screenHeight),
                        new Container(
                            child:
                            SignUpWidgets().userInputField(curIndex, screenHeight, screenWidth, args)
                        ),
                      ]
                  ),
                )
              ],
            )
          ],
        )
    );
  }

  onChangeName(text){
    setState(() {
      this.name = text;
    });
  }

  onChangeEmail(text){
    setState(() {
      this.email = text;
    });
  }

  onChangeIntroduction(text){
    setState(() {
      this.introduction = text;
    });
  }

  onTapGender(imgName) {
    setState(() {
      if (imgName.startsWith("images/gender_man")) {
        this.gender = 0;
      } else {
        this.gender = 1;
      }
    });
  }

  onChangeWant2Cross(text, value) {
    setState(() {
      if (text == 'Men') {
        this.want2men = value;
      } else {
        this.want2women = value;
      }
    });
  }

  onChangeTime(time) {
    setState(() {
      this.birthday = time.toIso8601String();
    });
  }

  onTopProfilePicture(image) {
    setState(() {
      this.image = image;
    });
  }

  onPressedGoBackArrow(){
    setState(() {
      if (this.curIndex <= 0)
        return;
      else
        this.curIndex -= 1;
    });
  }

  onPressedFloatButton(){
    setState(() {
      if (this.curIndex >= 5) {
        print_debug();
        return;
      } else {
        this.curIndex += 1;
      }
      controller.clear();
    });
  }


  print_debug(){
    print("name => $name");
    print("email => $email");
    print("gender => $gender");
    print("want2men => $want2men");
    print("want2women => $want2women");
    print("birthday => $birthday");
    print("image => $image");
    print("introduction => $introduction");
  }
}
