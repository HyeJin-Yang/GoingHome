import 'package:flutter/material.dart';
import 'package:flutter_app1/Widgets/Main/Profile/Main/PurchaseAlert.dart';

class ButtonField{
  Widget buttonField(screenHeight, screenWidth, context, onTap, {coffee=9}) {
    return Container(
      height: screenHeight*0.44458,
      child: Padding(
        padding: EdgeInsets.only(top: screenHeight*0.0517),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            button(screenHeight, screenWidth, 'images/cup.png', '보유 커피 : $coffee잔', (){}),
            button(screenHeight, screenWidth, 'images/home2.png', '커피 구매하러 가기', () => PurchaseCoffee().show(context)),
            button(screenHeight, screenWidth, 'images/wheel.png', '설정', () => onTap(1)),
          ],
        ),
      ),
    );
  }

  Widget button(screenHeight, screenWidth, image, text, action) {
    return Padding(
      padding: EdgeInsets.only(right: screenWidth*0.114, left: screenWidth*0.114, bottom: screenHeight*0.012),
      child: SizedBox(
      height: screenHeight * 0.062,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container (height: 20, child: Image.asset(image),),
            Padding(padding: EdgeInsets.only(left:5, right:5),),
            Container(padding: EdgeInsets.only(top:5),
            child: Text(text, style: TextStyle(fontFamily: 'Manjaribold', fontSize: 18)
            )
            )
          ],
        ),
        onPressed: action,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90.0)),
      ),
    )
    );
  }
}