import 'package:flutter/material.dart';
import 'package:flutter_app1/Widgets/Main/Coffee/Main/ListViewField.dart';

class CoffeeMainPage extends StatefulWidget{
  CoffeeMainPage(this.onTapProfile);
  final onTapProfile;
  _CoffeeMainPage createState() => _CoffeeMainPage();
}

class _CoffeeMainPage extends State<CoffeeMainPage> {
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