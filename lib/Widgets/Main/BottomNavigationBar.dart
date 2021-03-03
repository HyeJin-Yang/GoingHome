import 'package:flutter/material.dart';

class CustomBottomNavigationBar {
  Widget bottomNavigationBar(screenHeight, screenWidth, currentIndex, onTap, {color}) {
    return Container(
      color: color==null?Color.fromRGBO(228, 226, 229, 1.0):color,
      child: SizedBox(
        width: screenWidth,
        height: screenHeight*0.127,
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(36.0), topRight: Radius.circular(36.0)),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1.0),
            ),
            child: Row(
              children: [
                for (int i=0; i<4; i++)
                  Expanded(child: imageButton(currentIndex, i, onTap))
              ],
            ),
          ),
        ),
      ),
    );
  } 

  imageButton(currentIndex, i, onTap) {
    List<String> images = [
      'images/heart.png', 'images/cup2.png',
      'images/flower.png', 'images/person.png'
    ];
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 25, width: 25, child: Image.asset(images[i]),),
          currentIndex==i?pinkCircle():Text("")
        ],
      ),
      onTap: () => onTap(i),
    );
  }

  pinkCircle() {
    return Padding(
      padding: EdgeInsets.only(top:6),
      child: Container(
        height:6,
        width: 6,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 129, 129, 1.0),
          shape: BoxShape.circle
        ),
      ),
    );
  }
}