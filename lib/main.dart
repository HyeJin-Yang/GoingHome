import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Met',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'We Met'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        backgroundColor: Colors.white,
        body: new Container(
          alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: new Column(
              children: [
                Flexible(
                    flex: 10,
                    child: new Container(
                      height: 600,
                      width: 600,
                      padding: EdgeInsets.only(left:15),
                        child: Image.asset('images/44444.PNG'),
                    )
                ),
                Flexible(
                  flex: 3,
                  child: new Container(
                    padding: EdgeInsets.only(left:31),
                    height: 70,
                    width: 200,
                    child:Text("WeMet",
                    style:TextStyle(fontSize:45,fontWeight:FontWeight.bold,color:Colors.red[900],)
                    ),
                  )
                ),
                Flexible(
                  flex: 3,
                  child: new Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90.0),
                      color: Colors.red[900],
                    ),
                    child: RaisedButton(
                      child:Text('Get Started',
                       style:TextStyle(fontSize:25,color:Colors.white)
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => profile_create()),
                        );
                      },
                      color:Colors.red[900],
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      )
                    ),
                  )
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