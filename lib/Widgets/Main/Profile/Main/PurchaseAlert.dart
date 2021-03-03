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
                borderRadius: BorderRadius.circular(10.0)),
            title: Column(
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
      child: Image.asset('images/logoIcon.png'),
    );
  }

  titleMainText() {
    return Text(
      "커피 구매하기",
      style: TextStyle(
          fontSize: 24,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromRGBO(255, 200, 200, 0.5),
          decorationThickness: 4.0),
    );
  }

  titleSubText() {
    return Text(
      "마주친 인연에게 커피를 보내보아요.",
      style: TextStyle(fontSize: 14),
    );
  }

  content(context) {
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
        closeX(context)
      ],
    );
  }

  contentRow(amount, description, price) {
    return GestureDetector(
      child: Row(
        children: [
          Expanded(flex: 1, child: contentImage()),
          Expanded(flex: 9, child: contentText(amount, description)),
          Expanded(flex: 1, child: contentPriceIcon()),
          Expanded(flex: 3, child: contentPrice(price)),
          Expanded(flex: 1, child: contentArrow()),
        ],
      ),
      onTap: () {},
    );
  }

  contentImage() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Image.asset('images/cup.png'),
    );
  }

  contentText(amount, description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$amount", style: TextStyle(fontSize: 14)),
        Text("$description", style: TextStyle(fontSize: 14)),
      ],
    );
  }

  contentPriceIcon() {
    return Container(height: 12, child: Image.asset('images/won.png'));
  }

  contentPrice(price) {
    return Text("$price",
        style: TextStyle(fontSize: 14), textAlign: TextAlign.end);
  }

  contentArrow() {
    return Container(
      alignment: Alignment.centerRight,
      child: Icon(
        Icons.arrow_forward_ios,
        color: Color.fromRGBO(255, 200, 200, 1.0),
      ),
    );
  }

  closeX(context) {
    return GestureDetector(
      child: Container(
      alignment: Alignment.center,
      child: Icon(Icons.close, color: Color.fromRGBO(216, 216, 216, 1.0),),
      ),
      onTap: () => {Navigator.pop(context)},
    );
  }
}