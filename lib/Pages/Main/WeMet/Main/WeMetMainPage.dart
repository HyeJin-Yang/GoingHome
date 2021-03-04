import 'package:flutter/material.dart';
import 'package:flutter_app1/Widgets/Main/WeMet/Main/ListViewField.dart';

class WeMetMainPage extends StatefulWidget{
  WeMetMainPage(this.onTapProfile);
  final onTapProfile;
  _WeMetMainPage createState() => _WeMetMainPage();
}

class _WeMetMainPage extends State<WeMetMainPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 51, 60, 1.0),
      body: Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.0693, left: screenWidth * 0.0693), 
        child: Column(
        children: [
          ListViewField().listViewField(screenHeight, screenWidth, context, widget.onTapProfile)
        ],
      ),
      )
    );
  }
}