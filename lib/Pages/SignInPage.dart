import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  _SigninPage createState() => _SigninPage();
}

class _SigninPage extends State<SigninPage> {
  double screenHeight;
  double screenWidth;
  int curIndex = 0;

  int curGenderIndex = 0;
  bool isSwitched_men = true;
  bool isSwitched_women = false;

  DateTime dayPicker = DateTime.now();

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
                          this.curIndex==i ? mainImg(screenHeight, screenWidth) : blackCircle(screenWidth)
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
  }  // 이부분 필요하다면 아이콘 수정 필요 -> 아이콘말고 이미지 파일로 받아야함.

  Widget closeX(){
    return Icon(Icons.close);
  }


  Widget mainImg(var screenHeight, var screenWidth){
    List<String> mainimageuse = ['images/nameCardIcon.png','images/emailIcon.png','images/sexIcon.png',
      'images/birthIcon.png','images/introduceIcon.png','images/introduceIcon.png']; //여기 이미지 파일 하나 바꿔야함 이미지파일 못받았음. (프로필 픽쳐 부분)
    return Container(
      height:screenHeight*0.046,
      width:screenWidth*0.101,
      child:Image.asset(mainimageuse[this.curIndex]),
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
    return Container(
        child:Padding(
            padding: EdgeInsets.only(top: screenHeight*0.018),
            child: Text(text[this.curIndex], style: TextStyle(fontFamily: 'Manjaribold', fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,))
    );
  }

  Widget userInputField(){
    List<Widget> inputFields = [nameField(), emailField(), genderField(),
      birthField(), profilePicField(), introduceField()];
    return inputFields[this.curIndex];
  }

  Widget signInTextField(hintText) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.08),
      child: TextFormField(
        style: TextStyle(fontFamily: 'Manjaribold'),
        cursorColor: Color.fromRGBO(216, 216, 216, 1.0),
        decoration: InputDecoration(
            hintText: "$hintText",
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
      ),
    );
  }

  Widget nameField() {
    return signInTextField("Nickname");
  }

  Widget emailField(){
    return signInTextField("Email Address");
  }

  Widget genderField(){
    return Container(
      height: screenHeight*0.4,
      width: screenWidth*0.853,
      // decoration: BoxDecoration(
      //     border: Border.all(color: Colors.black)
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          genderImgs(),
          Text("Want to cross paths with...", style: TextStyle(fontFamily: 'Manjaribold', fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
          genderWantToCross("Men"),
          genderWantToCross("Women"),
        ],
      ),
    );
  }

  Widget genderImgs() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(child: genderImg(curGenderIndex == 0 ? "images/gender_manOButton.png" : "images/gender_manXButton.png")),
          Padding(padding: EdgeInsets.only(right: 10, left: 10),),
          Expanded(child: genderImg(curGenderIndex == 1 ? "images/gender_womanOButton.png" : "images/gender_womanXButton.png")),
        ],
      ),
    );
  }

  Widget genderImg(imgName) {
    return GestureDetector(
      child: Image.asset("$imgName"),
      onTap: () {
        setState(() {
          if (imgName.startsWith("images/gender_man")) {
            this.curGenderIndex = 0;
          } else {
            this.curGenderIndex = 1;
          }
        });
      },
    );
  }

  Widget genderWantToCross(text) {
    return Row(
      children: [
        Expanded(
          child: new Container(
            alignment: Alignment.centerLeft,
            width: 100,
            child: Text("$text", style: TextStyle(fontFamily: 'Manjaribold', fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
          ),
        ),
        CupertinoSwitch(
            value: text=='Men' ? isSwitched_men : isSwitched_women,
            trackColor: Color.fromRGBO(216, 216, 216, 1.0),
            activeColor: text == "Men" ? Color.fromRGBO(59, 90, 154, 1.0) : Color.fromRGBO(255, 129, 129, 1.0),
            onChanged: (value) {
              setState(() {
                if (text == 'Men') {
                  this.isSwitched_men = value;
                } else {
                  this.isSwitched_women = value;
                }
              });
            }
        )
      ],
    );
  }

  Widget birthField(){
    return Container(
        height: screenHeight*0.4,
        width: screenWidth*0.853,
        child:CupertinoTheme(
            data: CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                dateTimePickerTextStyle: TextStyle(
                    fontSize: 20, fontFamily: 'Manjaribold'
                ),
              ),
            ),
            child:CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                minimumYear: 1900,
                maximumYear:2021,
                use24hFormat: true,
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (time) {
                  setState(() {
                    dayPicker = time;
                  });
                })
        )
    );

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