import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigator {
  Widget bottomNavigator(screenHeight, screenWidth, currentPage) {
    return Container(
      child: new SizedBox(
          width: screenWidth,
          height: screenHeight*0.127,
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(36.0), topRight: Radius.circular(36.0)),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0)
                  ]
              ),
              child: new Row(
                children: [
                  Expanded(child: imageButton('images/heart.png', currentPage, 0)),
                  Expanded(child: imageButton('images/cup2.png', currentPage, 1)),
                  Expanded(child: imageButton('images/flower.png', currentPage, 2)),
                  Expanded(child: imageButton('images/person.png', currentPage, 3)),
                ],
              ),
            ),
          ),
        )
    );
  }

  Widget imageButton(imgPath, currentPage, pageNumber) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 25,
            width: 25,
            child: Image.asset(imgPath),
          ),
          pageNumber==currentPage?pinkCircle():Text("")
        ],
      ),
    );
  }

  Widget pinkCircle() {
    return Padding(
        padding: EdgeInsets.only(top: 6),
        child: Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 129, 129, 1.0),
              shape: BoxShape.circle
          ),
        )
    );
  }
}