import 'package:flutter/material.dart';

import 'SendCoffeeConfirmAlert.dart';

class SendCoffeeAlert {
  sendCoffeeAlert(context) {
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
      "커피 보내기",
      style: TextStyle(
          fontSize: 24,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromRGBO(255, 200, 200, 0.5),
          decorationThickness: 4.0),
    );
  }

  titleSubText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
              "님께 메시지를 남겨보세요.",
              style: TextStyle(
                fontSize: 12,
              ),
              overflow: TextOverflow.clip,
            )
          ],
        ),
      ],
    );
  }

  content(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            visualDensity: VisualDensity.compact,
            value: true,
            onChanged: (value) {},
          ),
          Text("프로필 공개를 동의합니다.")
        ],
      ),
      Row(
        children: [Image.asset('images/cup2.png'), Text("남은커피 : 9잔")],
      ),
      Align(alignment: Alignment.center, child: button("보내기", () =>{Navigator.pop(context), SendCoffeeConfirmAlert().sendCoffeeConfirmAlert(context)})),
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
