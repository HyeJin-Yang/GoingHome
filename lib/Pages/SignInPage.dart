import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  _SigninPage createState() => _SigninPage();
}

class _SigninPage extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: new Container(
          decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
          ),
          child: new Column(
            children:[
              Container(
                margin:EdgeInsets.only(top:screenHeight*0.165,left:screenWidth*0.072),
                mainAxisAlignment: MainAxisAlignment.end,
                height:screenHeight*0.046,
                width:screenWidth*0.101,
                child:Image.asset('images/nameCardIcon.png'),
              ),
              Container(
              )
            ]
          )
        )
    );
  }
}