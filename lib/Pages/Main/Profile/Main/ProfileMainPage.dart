import 'package:flutter/material.dart';
import 'package:flutter_app1/Widgets/Main/Profile/Main/ButtonField.dart';
import 'package:flutter_app1/Widgets/Main/Profile/Main/ProfileField.dart';

class ProfileMainPage extends StatefulWidget{
  ProfileMainPage(this.onTap);
  final onTap;
  _ProfileMainPage createState() => _ProfileMainPage();
}

class _ProfileMainPage extends State<ProfileMainPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(228, 226, 229, 1.0),
      body: Column(
        children: [
          ProfileField().profileField(screenHeight, screenWidth),
          ButtonField().buttonField(screenHeight, screenWidth, context, widget.onTap)
        ],
      ),
    );
  }
}