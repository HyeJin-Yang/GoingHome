import 'package:flutter/material.dart';
import 'package:flutter_app1/Pages/SignInPage.dart';
import 'package:flutter_app1/Widgets/Buttons.dart';

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
                    Buttons().entrySignIn(screenHeight, screenWidth, Color.fromRGBO(29,21,17,1.0), 'images/gIcon.png', 'Sign in with Google', onPressGoogleLogin),
                    Buttons().entrySignIn(screenHeight, screenWidth, Color.fromRGBO(59,90,154,1.0), 'images/fIcon.png', 'Sign in with Facebook', onPressFacebookLogin),
                    Buttons().entrySignIn(screenHeight, screenWidth, Color.fromRGBO(255,200,200,1.0), 'images/phoneIcon.png', 'Sign in with Phone Number', onPressphonenumLogin, fontColor: Color.fromRGBO(29, 21, 17, 1.0)),
                  ]
                ),
                policy(screenHeight, screenWidth),
              ],
            )
        )
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
      MaterialPageRoute(builder: (context) => SigninPage()),
    );
  }
  onPressFacebookLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SigninPage()),
    );
  }
  onPressphonenumLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SigninPage()),
    );
  }
}