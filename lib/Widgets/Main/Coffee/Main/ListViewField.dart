import 'package:flutter/material.dart';

import '../../TopBar.dart';
import 'DeleteMessageAlert.dart';

class ListViewField {
  Widget listViewField(screenHeight, screenWidth, context, onTapProfile) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.07413, bottom: screenHeight * 0.025),
        child: Container(
          height: 40,
          child: TopBar().topBar("마주친 인연", 'images/pink_arrow.png',
              'images/black_dotx3.png', () {}, () {}),
        ),
      ),
      Container(
        height: screenHeight * 0.72,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            for (int i = 0; i < 10; i++)
              contentRow(screenHeight, screenWidth, context, onTapProfile),
          ],
        ),
      )
    ]);
  }

  Widget contentRow(screenHeight, screenWidth, context, onTapProfile, {image}) {
    return Padding(
        padding: EdgeInsets.only(bottom: screenHeight * 0.0332),
        child: Container(
            height: screenHeight * 0.0923,
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: onTapProfile,
                    child: Padding(
                        padding:
                            EdgeInsets.only(right: screenWidth * 0.0413 / 2),
                        child: leftImage(screenHeight, screenWidth))),
                textField(),
                Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.0413 / 2),
                    child: rightImages(screenHeight, screenWidth, context))
              ],
            )));
  }

  Widget leftImage(screenHeight, screenWidth, {image}) {
    return Container(
      child: SizedBox(
        width: screenWidth * 0.2,
        height: screenHeight * 0.0923,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: image == null ? Text("") : Image.network(image),
          ),
        ),
      ),
    );
  }

  Widget textField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "로즈",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text("채팅룸으로", style: TextStyle(color: Colors.white, fontSize: 16)),
        Text("변경이 필요하다", style: TextStyle(color: Colors.white, fontSize: 16)),
        Text("마지막 순간: 2020.08.01 20:45",
            style: TextStyle(color: Colors.white, fontSize: 16)),
      ],
    );
  }

  Widget rightImages(screenHeight, screenWidth, context) {
    return Column(
      children: [
        // imageButton(screenHeight, screenWidth, 'images/flower2.png', () => {}),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
        ),
        imageButton(screenHeight, screenWidth, 'images/trash.png', () => {DeleteMessageAlert().deleteMessageAlert(context)}),
      ],
    );
  }

  Widget imageButton(screenHeight, screenWidth, image, action) {
    return GestureDetector(
      onTap: action,
      child: Image.asset(
        image,
        scale: 0.7,
      ),
    );
  }
}
