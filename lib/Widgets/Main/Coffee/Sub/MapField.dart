import 'package:flutter/material.dart';

class MapField {
  Widget mapField(screenHeight, screenWidth) {
    return Container(
      height: screenHeight*0.2315,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.white
      ),
    );
  }
}