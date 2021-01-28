import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  _SigninPage createState() => _SigninPage();
}

class _SigninPage extends State<SigninPage> {
  double screenHeight;
  double screenWidth;
  int curIndex = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width; 
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(255, 200, 200, 1.0),
          onPressed: onPressedFloatbutton,
          child: Icon(Icons.arrow_forward_ios),
        ),
        body: Column(
          children: [
          topIcons(screenHeight, screenWidth),
          Container(
            padding: EdgeInsets.only(left: screenWidth*0.072, right:screenWidth*0.072),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                children: [
                  for (int i=0; i<6; i++)
                    this.curIndex==i ? nameCardImg(screenHeight, screenWidth) : blackCircle(screenWidth)
                  ],
                ),
              mainText(),
              userInputField()
              ]
          ),
          )
          ],
        )
    );
  }

Widget topIcons(var screenHeight, var screenWidth){
  return new Container(
    padding: EdgeInsets.only(top: screenHeight*0.0825, bottom:screenHeight*0.0825, left: screenWidth*0.064),
    child: Row(
      children: [
        goBackArrow(),
        Padding(padding: EdgeInsets.only(left: screenWidth*0.422, right:screenWidth*0.36)),
        closeX()
      ],
    ),
  );
}

Widget goBackArrow() {
  return GestureDetector(
    child: Icon(Icons.arrow_back_ios),
    onTap: onPressedGoBackArrow,
  );
}

Widget closeX(){
  return Icon(Icons.close);
}

Widget nameCardImg(var screenHeight, var screenWidth){
  return Container(
    height:screenHeight*0.046,
    width:screenWidth*0.101,
    child:Image.asset('images/nameCardIcon.png'),
  );
}

Widget blackCircle(var screenWidth){
  return Padding(
    padding: EdgeInsets.only(left: screenWidth*0.013, right: screenWidth*0.013),
    child: Container(
    height: screenHeight*0.024,
    width: screenWidth*0.024,
    decoration: BoxDecoration(
    color: Colors.black,
    shape: BoxShape.circle
    ),
    )
  );
}

Widget mainText(){
  List<String> text = ["What's your name?", "What's your email?", "You are ...",
  "What's your date of birth?", "Pick your profile pictures", "Introduce yourself"];
  return Padding(
    padding: EdgeInsets.only(top: screenHeight*0.018, bottom: screenHeight*0.08),
    child: Text(text[this.curIndex], style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,));
}

Widget userInputField(){
  List<Widget> inputFields = [nameField(), emailField(), genderField(),
  birthField(), profilePicField(), introduceField()];
  return inputFields[this.curIndex];
}

Widget nameField() {
  return TextFormField(
    cursorColor: Color.fromRGBO(216, 216, 216, 1.0),
    decoration: InputDecoration(
      hintText: "Nickname",
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
      )
      ),
  );
}

Widget emailField(){
  return Container();
}

Widget genderField(){
  return Container();
}

Widget birthField(){
  return Container();
}

Widget profilePicField(){
  return Container();
}

Widget introduceField(){
  return Container();
}

onPressedGoBackArrow(){
  setState(() {
    if (this.curIndex <= 0)
      return;
    else
      this.curIndex -= 1;
    print(curIndex);
  });
}

onPressedFloatbutton(){
  setState(() {
    if (this.curIndex >= 5)
      return;
    else
      this.curIndex += 1;
    print(curIndex);
  });
}

}