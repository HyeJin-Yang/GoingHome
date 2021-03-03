import 'package:flutter/material.dart';
import 'package:flutter_app1/Pages/Main/BasePage.dart';
import 'package:flutter_app1/Widgets/SignIn/SignInWidgets.dart';

class SignInPage extends StatefulWidget{
  _SignInPage createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  final controller = TextEditingController();

  int currentIndex = 0;
  String name = '';
  String email = '';
  int gender = 0;
  bool want2men = false;
  bool want2women = false;
  String birthday = DateTime.now().toIso8601String();
  var image;
  String introduction = '';
  var args;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    args = {
      'name': [screenHeight, onChangeName, controller, name],
      'email': [screenHeight, onChangeEmail, controller, email],
      'gender': [screenHeight, screenWidth, gender, want2men, want2women, onTapGender, onChangeWant2Cross],
      'birth': [screenHeight, screenWidth, onChangeTime],
      'profile': [onTapProfile],
      'introduction': [screenHeight, onChangeIntroduction, controller, introduction],
    };
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(255, 125, 125, 1.0),
        onPressed: onPressFloatButton,
        child: Icon(Icons.arrow_forward_ios),
      ),
      body: Padding(
        padding: EdgeInsets.only(right:screenWidth*0.0386, left:screenWidth*0.0386),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight*0.0714, bottom: screenHeight*0.0738),
            child: SignInWidgets().topBar(screenHeight, screenWidth, onPressGoBackArrow, onPressClose),
          ),
          SignInWidgets().currentPosition(screenHeight, screenWidth, currentIndex),
          Padding(
            padding: EdgeInsets.only(top:screenHeight*0.0184),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SignInWidgets().mainText(currentIndex),
            )
          ),
          SignInWidgets().userInputField(currentIndex, args)
        ],
      ),
      ),
    );
  }

  onChangeName(text) {
      setState(() {
        this.name = text;
      });
    }

  onChangeEmail(text){
    setState(() {
      this.email = text;
    });
  }

  onChangeIntroduction(text) {
    setState(() {
      this.introduction = text;
    });
  }

  onTapGender(imgName) {
    setState(() {
      if (imgName.startsWith('images/gender_man')) {
        this.gender = 0;
      } else {
        this.gender = 1;
      }
    });
  }

  onChangeWant2Cross(text, value) {
    setState(() {
      if (text == 'Men') {
        this.want2men = value;
      } else {
        this.want2women = value;
      }
    });
  }

  onChangeTime(time) {
    setState(() {
      this.birthday = time.toIso8601String();
    });
  }

  onTapProfile(image) {
    setState(() {
      this.image = image;
    });
  }

  onPressGoBackArrow() {
    setState(() {
      if (this.currentIndex <= 0) {
        Navigator.pop(context);
      } else {
        this.currentIndex -= 1;
      }
    });
  }

  onPressClose() {
    Navigator.pop(context);
  }

  onPressFloatButton() {
    setState(() {
      if (this.currentIndex >= 5) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BasePage()));
      } else {
        this.currentIndex += 1;
      }
      this.controller.clear();
    });
  }
}