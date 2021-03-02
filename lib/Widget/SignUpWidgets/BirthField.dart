import 'package:flutter/cupertino.dart';

class BirthField {
  Widget birthField(screenHeight, screenWidth, onChangeTime){
    return Container(
        height: screenHeight*0.304,
        width: screenWidth*0.853,
        child:CupertinoTheme(
            data: CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                dateTimePickerTextStyle: TextStyle(
                    fontSize: 24, fontFamily: 'Manjaribold'
                ),
              ),
            ),
            child:CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                minimumYear: 1900,
                maximumYear:DateTime.now().year,
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (time) => onChangeTime(time))
        )
    );
  }
}