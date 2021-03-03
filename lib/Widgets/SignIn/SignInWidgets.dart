import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Widgets/SignIn/ProfilePictureField.dart';

class SignInWidgets {
  Widget topBar(screenHeight, screenWidth, leftAction, rightAction) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Container(alignment: Alignment.centerLeft, child: topIcon(screenHeight, screenWidth, leftAction, 'left'),),),
          Expanded(child: Text("", style: TextStyle(color: Color.fromRGBO(255, 126, 126, 1.0), fontSize: 18, ),textAlign: TextAlign.center,),),
          Expanded(child: Container(alignment: Alignment.centerRight, child: topIcon(screenHeight, screenWidth, rightAction, 'right'),),)
        ],
      ),
    );
  }

  Widget topIcon(screenHeight, screenWidth, action, position) {
    return IconButton(
      icon: position=='left'? Icon(Icons.arrow_back_ios):Icon(Icons.close),
      onPressed: action,
    );
  }

  Widget currentPosition(screenHeight, screenWidth, currentIndex) {
    return Row(
      children: [
        for (int i=0; i<6; i++)
          currentIndex == i
            ? currentPositionImage(screenHeight, screenWidth, currentIndex)
            : blackCircle(screenHeight, screenWidth)
      ],
    );
  }

  Widget currentPositionImage(screenHeight, screenWidth, currentIndex){
    List<String> images = [
      'images/nameCardIcon.png',
      'images/emailIcon.png',
      'images/sexIcon.png',
      'images/birthIcon.png',
      'images/profilePicture.png',
      'images/introduceIcon.png'
    ];
    return Container(
      height: screenHeight*0.046,
      width: screenWidth*0.101,
      child: Image.asset(images[currentIndex]),
    );
  }

  Widget blackCircle(screenHeight, screenWidth){
    return Padding(
      padding: EdgeInsets.only(left: screenWidth*0.013, right:screenWidth*0.013),
      child: Container(
        height: screenHeight*0.024,
        width: screenWidth*0.024,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle
        ),
      ),
    );
  }

  Widget mainText(currentIndex) {
    List<String> texts = [
      "What's your name?", "What's your email?",
      "You are ...", "What's your date of birth?",
      "Pick your profile pictures", "Introduce yourself"
    ];
    return Container(
      child: Text(
        texts[currentIndex],
        style: TextStyle(fontFamily: 'Manjaribold', fontSize: 22,
        fontWeight: FontWeight.bold), textAlign: TextAlign.left,
      ),
    );
  }

  Widget userInputField(currentIndex, args) {
    List<Widget> inputField = [
      nameField(args['name']),
      emailField(args['email']),
      genderField(args['gender']),
      birthField(args['birth']),
      profileField(args['profile']),
      introductionField(args['introduction'])
    ];
    return inputField[currentIndex];
  }

  nameField(args){
    double screenHeight = args[0];
    var onChangeText = args[1];
    var controller = args[2];
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.107),
      child: TextFormField(
        style: TextStyle(fontFamily: 'Manjaribold'),
        cursorColor: Color.fromRGBO(216, 216, 216, 1.0),
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          hintText: "Nickname",
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
          )
        ),
        onChanged: (text) => onChangeText(text),
      ),
    );
  }

  emailField(args){
    double screenHeight = args[0];
    var onChangeText = args[1];
    var controller = args[2];
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.107),
      child: TextFormField(
        style: TextStyle(fontFamily: 'Manjaribold'),
        cursorColor: Color.fromRGBO(216, 216, 216, 1.0),
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          hintText: "Email Address",
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(216, 216, 216, 1.0), width: 3)
          )
        ),
        onChanged: (text) => onChangeText(text),
      ),
    );
  }

  genderField(args){
    double screenHeight = args[0];
    double screenWidth = args[1];
    int gender = args[2];
    bool want2men = args[3];
    bool want2women = args[4];
    var onTapGender = args[5];
    var onChangeWant2Cross = args[6];
    return Container(
      height: screenHeight*0.4,
      width: screenWidth*0.853,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight*0.0061, bottom: screenHeight*0.0418),
            child: genderImages(gender, onTapGender)
          ),
          Text("Want to cross paths with...", style: TextStyle(fontFamily: "Manjaribold", fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
          Padding (
            padding: EdgeInsets.only(top: screenHeight*0.0246, bottom:10),
            child: genderWantToCross("Men", want2men, want2women, onChangeWant2Cross)
          ),
          genderWantToCross("Women", want2men, want2women, onChangeWant2Cross)
        ],
      ),
    );
  }

  genderImages(gender, onTap) {
    String imgMen = gender==0?'images/gender_manOButton.png':'images/gender_manXButton.png';
    String imgWomen = gender==1?'images/gender_womanOButton.png':'images/gender_womanXButton.png';
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            child: Image.asset(imgMen),
            onTap: () => onTap(imgMen),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 10, left:10),),
        Expanded(
          child: GestureDetector(
            child: Image.asset(imgWomen),
            onTap: () => onTap(imgWomen),
          ),
        )
      ],
    );
  }

  genderWantToCross(text, want2men, want2women, onChange) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            width: 100,
            child: Text("$text", style: TextStyle(fontFamily: 'Manjaribold', fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
          ),
        ),
        CupertinoSwitch(
          value: text=='Men'?want2men:want2women,
          trackColor: Color.fromRGBO(216, 216, 216, 1.0),
          activeColor: text == 'Men' ? Color.fromRGBO(59, 90, 154, 1.0) : Color.fromRGBO(255, 129, 129, 1.0),
          onChanged: (value) => onChange(text, value),
        )
      ],
    );
  }

  birthField(args){
    double screenHeight = args[0];
    double screenWidth = args[1];
    var onChange = args[2];
    return Container(
      height: screenHeight*0.304,
      width: screenWidth*0.853,
      child: CupertinoTheme(
        data: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            dateTimePickerTextStyle: TextStyle(
              fontSize: 24, fontFamily: 'Manjaribold'
            )
          )
        ),
        child: CupertinoDatePicker(
          initialDateTime: DateTime.now(),
          minimumYear: 1900,
          maximumYear: DateTime.now().year,
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (time) => onChange(time),
        ),
      ),
    );
  }

  profileField(args){
    var onTapProfile = args[0];
    return ProfilePictureField(onTapProfile);
  }

  introductionField(args){
    double screenHeight = args[0];
    var onChangeText = args[1];
    var controller = args[2];
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.0),
      child: TextFormField(
        style: TextStyle(fontFamily: 'Manjaribold'),
        cursorColor: Color.fromRGBO(216, 216, 216, 1.0),
        controller: controller,
        maxLines: 15,
        maxLength: 500,
        decoration: InputDecoration(
          hintText: "최소 10자 이상 적어주세요.",
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        onChanged: (text) => onChangeText(text),
      ),
    );
  }
}