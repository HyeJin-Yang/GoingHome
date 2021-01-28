import 'package:flutter/material.dart';
import 'package:flutter_app1/Pages/EntryPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Met',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: EntryPage(),
    );
  }
}