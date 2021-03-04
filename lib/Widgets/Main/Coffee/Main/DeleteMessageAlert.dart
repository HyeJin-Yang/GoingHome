import 'package:flutter/material.dart';

class DeleteMessageAlert {
  deleteMessageAlert(context) {
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
      child: Image.asset('images/trash2.png'),
    );
  }

  titleSubText() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
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
          "님을",
          style: TextStyle(
            fontSize: 12,
          ),
          overflow: TextOverflow.clip,
        )
      ],
    );
  }

  content(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: button("매칭에서 삭제", () => {Navigator.pop(context)})),
          ],
        ),
        closeX(context)
      ],
    );
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
