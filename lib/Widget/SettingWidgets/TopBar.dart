import 'package:flutter/material.dart';

class TopBar{
  Widget topBar(screenHeight, screenWidth, onPressedGoBackArrow){
    return new Container(
      padding: EdgeInsets.only(top: screenHeight*0.07143, bottom: screenHeight*0.03694),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: left(onPressedGoBackArrow),
              )
          ),
          Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: new Text("설정",
                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(255, 200, 200, 1.0)),
                  )
              )
          ),
          Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: right(onPressedGoBackArrow),
              )
          ),
        ],
      ),
    );
  }
  Widget left(onPressedBell) {
    return GestureDetector(
      child: Container(
        height: 40,
        child: Image.asset('images/pink_arrow.png'),
      ),
      onTap: onPressedBell,
    );
  }

  Widget right(onPressedHome){
    return GestureDetector(
      child: Container(
        height: 40,
        child: Image.asset('images/black_dotx3.png'),
      ),
      onTap: onPressedHome,
    );
  }
}