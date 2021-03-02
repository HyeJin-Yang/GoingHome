import 'package:flutter/material.dart';
import 'Pages/EntryPage.dart';
import 'Pages/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: EntryPage(),
      home: MainPage(),
    );
  }
}