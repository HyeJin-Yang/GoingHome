import 'package:flutter/material.dart';

import 'Main/WeMetMainPage.dart';
import 'Sub/WeMetProfilePage.dart';

class WeMetBasePage extends StatefulWidget{
  _WeMetBasePage createState() => _WeMetBasePage();
}

class _WeMetBasePage extends State<WeMetBasePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var pages = [
    WeMetMainPage(),
    WeMetProfilePage()
    ];
    return pages[currentIndex];
  }

}