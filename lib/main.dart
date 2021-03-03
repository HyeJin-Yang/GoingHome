import 'package:flutter/material.dart';

import 'Pages/Entry/EntryPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EntryPage()
    );
  }
  
}