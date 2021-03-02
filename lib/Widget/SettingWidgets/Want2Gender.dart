import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Want2Gender {
  Widget want2Gender(screenHeight, screenWidth, gender, action) {
    return Container(
      height: screenHeight*0.08,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mainText(),
          Row(
            children: [
              Expanded(flex: 1, child: subText()),
              Expanded(flex: 1, child: genderRadio("남자", gender, action)),
              Expanded(flex: 1, child: genderRadio("여자", gender, action)),
              Expanded(flex: 1, child: genderRadio("모두", gender, action)),
            ],
          )
        ],
      ),
    );
  }

  Widget mainText() {
    return Text(
      "마주친 인연",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Widget subText() {
    return Text("성별",
        style:
            TextStyle(color: Color.fromRGBO(255, 200, 200, 1.0), fontSize: 18));
  }

  Widget genderRadio(text, gender, action) {
    return Row(
      children: [
        Text("$text", style: TextStyle(color: Colors.white, fontSize: 18)),
        Theme(
          data: ThemeData(
            unselectedWidgetColor: Color.fromRGBO(255, 200, 200, 1.0),
          ),
          child: Radio(
            value: text == '남자'
                ? 0
                : text == '여자'
                    ? 1
                    : 2,
            groupValue: gender,
            onChanged: (value) => action(value),
            activeColor: Color.fromRGBO(255, 129, 129, 1.0),
          ),
        )
      ],
    );
  }
}
