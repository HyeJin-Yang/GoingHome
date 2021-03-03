import 'package:flutter/material.dart';

class PurchaseCoffee {
  purchaseCoffee(context) {
    return show(context);
  }

  show(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Column(
              children: [
                logo(),
                Padding(
                    padding: EdgeInsets.only(top: 17, bottom: 17),
                    child: titleMainText()),
                titleSubText(),
              ],
            ),
            content: content(),
          );
        });
  }

  logo() {
    return Container(
        height: 35, width: 35, child: Image.asset("images/logoIcon.png"));
  }

  titleMainText() {
    return Text(
      "커피 구매하기",
      style: TextStyle(
        fontSize: 24,
        decoration: TextDecoration.underline,
        decorationColor: Color.fromRGBO(255, 200, 200, 0.5),
        decorationThickness: 4.0,
      ),
    );
  }

  titleSubText() {
    return Text(
      "마주친 인연에게 커피를 보내보아요.",
      style: TextStyle(fontSize: 14),
    );
  }

  content() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(),
        contentRow(' 1', ' A cup of coffee', '1,000'),
        Divider(),
        contentRow(' 5', ' Five cups of coffee', '5,000'),
        Divider(),
        contentRow(' 10', ' Ten cups of coffee', '9,000'),
        Divider(),
        contentRow(' 30', ' Thirty cups of coffee', '27,000'),
        Divider(),
      ],
    );
  }

  contentRow(textNum, textDesc, price) {
    return Row(
        children: [
          Expanded(flex: 1, child: contentImage()),
          Expanded(flex: 9, child: contentText(textNum, textDesc)),
          Expanded(flex: 1, child: contentPriceIcon()),
          Expanded(flex: 3, child: contentPrice(price)),
          Expanded(flex: 1, child: contentArrow()),
      ],
    );
  }

  contentImage() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Image.asset('images/cup.png'),
    );
  }

  contentText(textNum, textDesc) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("$textNum"), Text("$textDesc")],
    );
  }

  contentPriceIcon() {
    return Container(height: 12, child: Image.asset('images/won.png'));
  }

  contentPrice(price) {
    return Text("$price", textAlign: TextAlign.end,);
  }

  contentArrow() {
    return Container(
      alignment: Alignment.centerRight,
      child: IconButton(
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Color.fromRGBO(255, 200, 200, 1.0),
        ),
        onPressed: () {},
      ),
    );
  }
}
