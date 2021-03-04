import 'package:flutter/material.dart';

class SendCoffeeConfirmAlert {
  sendCoffeeConfirmAlert(context) {
    return show(context);
  }

  show(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                logo(),
                Padding(
                    padding: EdgeInsets.only(top: 17, bottom: 17),
                    child: titleMainText()),
                titleSubText(),
              ],
            ),
            content: content(context),
          );
        });
  }

  logo() {
    return Container(
      height: 35,
      width: 35,
      child: Image.asset('images/cup.png'),
    );
  }

  titleMainText() {
    return Text(
      "꽃다발 보내기",
      style: TextStyle(
          fontSize: 24,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromRGBO(255, 200, 200, 0.5),
          decorationThickness: 4.0),
    );
  }

  titleSubText() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              " 로즈 ",
              style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromRGBO(255, 200, 200, 0.5),
                  decorationThickness: 4.0),
            ),
            Text(
              "님께 커피를 성공적으로 전달되었습니다.",
              style: TextStyle(
                fontSize: 12,
              ),
              overflow: TextOverflow.clip,
            )
          ],
        ),
        Text('"카페" 페이지에서 확인해보세요.',
            style: TextStyle(
              fontSize: 12,
            ))
      ],
    );
  }

  content(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          button("카페", () {}),
        ],
      ),
      closeX(context)
    ]);
  }

  button(text, action) {
    return RaisedButton(
      onPressed: action,
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }

  closeX(context) {
    return GestureDetector(
      child: Container(
        child: Icon(
          Icons.close,
          color: Color.fromRGBO(216, 216, 216, 1.0),
        ),
      ),
      onTap: () => {Navigator.pop(context)},
    );
  }
}
