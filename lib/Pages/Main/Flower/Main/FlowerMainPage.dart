import 'package:flutter/material.dart';
import 'package:flutter_app1/Widgets/Main/Flower/Main/ListViewField.dart';

class FlowerMainPage extends StatefulWidget{
  _FlowerMainPage createState() => _FlowerMainPage();
}

class _FlowerMainPage extends State<FlowerMainPage> {
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
          ListViewField().listViewField(screenHeight, screenWidth, context)
        ],
      ),
      )
    );
  }
}