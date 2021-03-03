import 'package:flutter/material.dart';
import 'package:flutter_app1/Pages/SignIn/SignInPage.dart';
import 'package:flutter_app1/Widgets/Entry/EntryWidgets.dart';

class EntryPage extends StatefulWidget{
  _EntryPage createState() => _EntryPage();
}

class _EntryPage extends State<EntryPage>{
  double screenHeight;
  double screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: screenWidth*0.112, right: screenWidth*0.112),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column (
              children: [
                Padding(padding: EdgeInsets.only(top:screenHeight*0.1527),),
                EntryWidgets().logoImage(),
                EntryWidgets().logoText(),
                Padding(padding: EdgeInsets.only(top: screenHeight*0.3916),),
                EntryWidgets().signInButton(screenHeight, screenWidth, Color.fromRGBO(29, 21, 17, 1.0), 'images/gIcon.png', 'Sign in with Google', onPressGoogleLogin),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight*0.0123, bottom: screenHeight*0.0123),
                  child: EntryWidgets().signInButton(screenHeight, screenWidth, Color.fromRGBO(59, 90, 154, 1.0), 'images/fIcon.png', 'Sign in with Facebook', onPressFacebookLogin)
                ),
                EntryWidgets().signInButton(screenHeight, screenWidth, Color.fromRGBO(255, 200, 200, 1.0), 'images/gIcon.png', 'Sign in with Phone Number', onPressPhoneLogin),
                EntryWidgets().policyField(screenHeight, screenWidth)
              ],
            )
          ],
        ),
        ),
    );
  }

  onPressGoogleLogin(){}
  onPressFacebookLogin(){}
  onPressPhoneLogin(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
  }
}