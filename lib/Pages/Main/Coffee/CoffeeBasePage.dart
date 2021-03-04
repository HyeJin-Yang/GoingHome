import 'package:flutter/material.dart';

import 'Main/CoffeeMainPage.dart';
import 'Sub/CoffeeProfilePage.dart';

class CoffeeBasePage extends StatefulWidget{
  _CoffeeBasePage createState() => _CoffeeBasePage();
}

class _CoffeeBasePage extends State<CoffeeBasePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var pages = [
    CoffeeMainPage(onTapProfile),
    CoffeeProfilePage(onTapProfileBack)
    ];
    return pages[currentIndex];
  }

  onTapProfile() {
    setState(() {
      this.currentIndex = 1;
    });
  }

  onTapProfileBack() {
    setState(() {
      this.currentIndex = 0;
    });
  }
}