import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignUpPage.dart';

class EntryPage extends StatefulWidget {
  _EntryPage createState() => _EntryPage();
}

class _EntryPage extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: screenHeight*0.174),),
                    logoIcon(30.0, 'images/logoIcon.png'),
                    logo(50.0, 'images/weMet.png'),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: screenHeight*0.364)),
                Column(
                    children: [
                      entrySignUpButton(screenHeight, screenWidth, Color.fromRGBO(29,21,17,1.0), 'images/gIcon.png', 'Sign in with Google', onPressGoogleLogin),
                      entrySignUpButton(screenHeight, screenWidth, Color.fromRGBO(59,90,154,1.0), 'images/fIcon.png', 'Sign in with Facebook', onPressFacebookLogin),
                      entrySignUpButton(screenHeight, screenWidth, Color.fromRGBO(255,200,200,1.0), 'images/phoneIcon.png', 'Sign in with Phone Number', onPressPhoneNumLogin, fontColor: Color.fromRGBO(29, 21, 17, 1.0)),
                    ]
                ),
                policy(screenHeight, screenWidth),
              ],
            )
        )
    );
  }

  Widget entrySignUpButton(var screenHeight, var screenWidth, var color, String imgPath, String text, var onPressAction, {fontColor=Colors.white}) {
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

  Widget logoIcon(double height, String imgPath){
    return Container(
      height: height,
      child: Image.asset(imgPath),
    );
  }

  Widget logo(double height, String imgPath) {
    return Container(
      height: height,
      child: Image.asset(imgPath),
    );
  }

  Widget policy(var screenHeight, var screenWidth) {
    return Container(
      height: screenHeight*0.1,
      width: screenWidth,
      padding: EdgeInsets.only(right: screenWidth*0.114, left: screenWidth*0.114),
      child: Image.asset('images/bySigningUpForWe.png'),
    );
  }

  onPressGoogleLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }
  onPressFacebookLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }
  onPressPhoneNumLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }
}