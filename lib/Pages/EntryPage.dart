import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Met',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstPage(title: 'We Met'),
    );
  }
}

class FirstPage extends StatefulWidget {
  FirstPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _EntryPage createState() => _EntryPage();
}

class _EntryPage extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        // appBar: AppBar(
        //
        //   title: Text(widget.title),
        // ),
        backgroundColor: Colors.white,
        body: new Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: new Column(
              children: [
                Container(
                  height: 50
                ),
                Container(
                      height: 45,
                      width: 45,
                      padding: EdgeInsets.only(left:15),
                      child: Image.asset('images/logoIcon.png'),
                ),
                 Container(
                      height: 50,
                      width: 250,
                      padding: EdgeInsets.only(left:15),
                      child: Image.asset('images/weMet.png'),
                    ),

                // Flexible(
                //     flex: 3,
                //     child: new Container(
                //       padding: EdgeInsets.only(left:40),
                //       height: 140,
                //       width: 260,
                //       child:Text("WeMet",
                //           style:TextStyle(fontFamily:'Manjariregular',fontSize:60,color:Colors.black ,)
                //       ),
                //     )
                // ),
              Container(
                height:200),
                Container(
                      height: 45,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.0),
                        color: Color.fromRGBO(29,21,17,1.0),
                      ),
                      child: RaisedButton(
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 20,
                              child:Image.asset('images/gIcon.png'),
                            ),
                            Container(
                              height: 45,
                              padding: EdgeInsets.all(15),
                              child:Text('Sign in with Google',
                                style:TextStyle(fontFamily:'Manjaribold',fontSize:15,color:Colors.white),
                              ),
                            ),
                          ],
                        ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profile_create()),
                            );
                          },
                          color:Color.fromRGBO(29,21,17,1.0),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0),
                          )
                      ),
                ),Container(
                  height:10
                ), Container(
                      height: 45,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.0),
                        color: Color.fromRGBO(59,90,154,1.0),
                      ),
                      child: RaisedButton(
                          child:Text('   Sign in with Facebook',
                              style:TextStyle(fontFamily:'Manjaribold',fontSize:15,color:Colors.white)
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profile_create()),
                            );
                          },
                          color:Color.fromRGBO(59,90,154,1.0),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0),
                          )
                      ),
                ),Container(
                    height:10
                ),
                Container(
                      height: 45,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.0),
                        color: Color.fromRGBO(255,200,200,1.0),
                      ),
                      child: RaisedButton(
                          child:Text('   Sign in with Phone Number',
                              style:TextStyle(fontFamily:'Manjaribold',fontSize:15,color:Colors.black)
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profile_create()),
                            );
                          },
                          color:Color.fromRGBO(255,200,200,1.0),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0),
                          ),
                      ),
                    ),
                Container(
                  height:80,
                  width: 300,
                  padding: EdgeInsets.only(left:15),
                  child: Image.asset('images/bySigningUpForWe.png'),
                ),
              ],
            )
        )
    );
  }
}

class profile_create extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("Profile creation"),
        ),
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