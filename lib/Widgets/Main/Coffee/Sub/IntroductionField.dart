import 'package:flutter/material.dart';

class IntroductionField {
  Widget introductionField(screenHeight, screenWidth) {
    return Flexible(
      child: Container(
      child: TextFormField(
        enabled: false,
        initialValue: '''안녕하세요.\n\n서울에 사는 로즈입니다. 인연을 찾습니다.\n\n키가 크고 착한 분 선호 합니다.''',
        style: TextStyle(color: Color.fromRGBO(255, 129, 129, 1.0),
        fontSize: 18),
      ),
    )
    );
  }
}