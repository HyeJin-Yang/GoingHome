import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Pages/SignInPage.dart';

class EntryPage extends StatefulWidget {
  _EntryPage createState() => _EntryPage();
}

class _EntryPage extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: new Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
            ),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: screenHeight*0.174),),
                    Container(
                      height: 30,
                      child: Image.asset('images/logoIcon.png'),
                    ),
                    Container(
                      height: 50,
                      child: Image.asset('images/weMet.png'),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: screenHeight*0.364)),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth*0.114, left: screenWidth*0.114),
                      child: Container(
                        alignment: Alignment.center,
                        height: screenHeight * 0.062,
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // alignment: Alignment.center,
                                height: 15,
                                child:Image.asset('images/gIcon.png'),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Container(
                                // alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 5),
                                child:Text('Sign in with Google', style:TextStyle(fontFamily:'Manjaribold', fontSize:15, color:Colors.white)),
                              ),
                            ],
                          ),
                          onPressed: onPressGoogleLogin,
                          color:Color.fromRGBO(29,21,17,1.0),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth*0.114, left: screenWidth*0.114),
                      child: Container(
                        alignment: Alignment.center,
                        height: screenHeight * 0.062,
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // alignment: Alignment.center,
                                height: 15,
                                child:Image.asset('images/fIcon.png'),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Container(
                                // alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 5),
                                child:Text('Sign in with Facebook', style:TextStyle(fontFamily:'Manjaribold', fontSize:15, color:Colors.white)),
                              ),
                            ],
                          ),
                          onPressed: onPressFacebookLogin,
                          color:Color.fromRGBO(59,90,154,1.0),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth*0.114, left: screenWidth*0.114),
                      child: Container(
                        alignment: Alignment.center,
                        height: screenHeight * 0.062,
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // alignment: Alignment.center,
                                height: 15,
                                child:Image.asset('images/phoneIcon.png'),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Container(
                                // alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 5),
                                child:Text('Sign in with Phone Number', style:TextStyle(fontFamily:'Manjaribold', fontSize:15, color:Colors.black)),
                              ),
                            ],
                          ),
                          onPressed: onPressphonenumLogin,
                          color:Color.fromRGBO(255,200,200,1.0),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: screenHeight*0.1,
                  width: screenWidth,
                  padding: EdgeInsets.only(right: screenWidth*0.114, left: screenWidth*0.114),
                  child: Image.asset('images/bySigningUpForWe.png'),
                ),
              ],
            )
        )
    );
  }

  onPressGoogleLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => profile_create()),
    );
  }
  onPressFacebookLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => profile_create()),
    );
  }
  onPressphonenumLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SigninPage()),
    );
  }
}

class profile_create extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:new Container(
            alignment: Alignment.center,
            child:new Column(
                children:[
                  Flexible(
                      flex:1,
                      child: new Container(

                      )
                  )
                ]
            )
        )
    );
  }
}