import 'package:flutter/material.dart';

import '../../TopBar.dart';
import 'SendCoffeeAlert.dart';

class ListViewField {
  Widget listViewField(screenHeight, screenWidth, context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.07413, bottom: screenHeight * 0.025),
          child: Container(
            height: 40,
            child: TopBar().topBar("내가 보낸 꽃다발", 'images/pink_arrow.png',
                'images/black_dotx3.png', () {}, () {}),
          ),
        ),
        Container(
          height: screenHeight*0.72,
          child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: [
            for (int i=0; i<4; i++)
                contentRow(screenHeight, screenWidth, context),
          Container(
            height: 50,
            child: TopBar().topBar("내가 받은 꽃다발", 'images/pink_arrow.png',
                'images/black_dotx3.png', () {}, () {}),
          ),
          for (int i=0; i<4; i++)
                contentRow(screenHeight, screenWidth, context),
          ],
        ),
        )
      ]
    );
  }

  Widget contentRow(screenHeight, screenWidth, context, {image}) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight*0.0332),
      child: Container(
      height: screenHeight*0.0923,
      width: screenWidth,
      child: GestureDetector(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: screenWidth*0.0413/2),
          child: leftImage(screenHeight, screenWidth)),
        textField(),
        Padding(
          padding: EdgeInsets.only(left: screenWidth*0.0413/2),
          child: rightImages(screenHeight, screenWidth, context))
      ],
    )
      )
    )
    );
  }

  Widget leftImage(screenHeight, screenWidth, {image}) {
    return Container(
      child: SizedBox(
        width: screenWidth*0.2,
        height: screenHeight*0.0923,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: image==null?Text(""):Image.network(image),
          ),
        ),
      ),
    );
  }

  Widget textField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("로즈", style: TextStyle(color: Colors.white, fontSize: 18),),
        Text("나이: 27", style: TextStyle(color: Colors.white, fontSize: 16)),
        Text("마주친 횟수: 10", style: TextStyle(color: Colors.white, fontSize: 16)),
        Text("마지막 순간: 2020.08.01 20:45", style: TextStyle(color: Colors.white, fontSize: 16)),
      ],
    );
  }

  Widget rightImages(screenHeight, screenWidth, context) {
    return Column(
      children: [
        imageButton(screenHeight, screenWidth, 'images/cup3.png', () => SendCoffeeAlert().sendCoffeeAlert(context)),
        Padding(padding: EdgeInsets.only(bottom: 10),),
        imageButton(screenHeight, screenWidth, 'images/trash.png', () => {}),
      ],
    );
  }

  Widget imageButton(screenHeight, screenWidth, image, action) {
    return GestureDetector(
      onTap: action,
      child: Image.asset(image, scale: 0.7,),
    );
  }
}