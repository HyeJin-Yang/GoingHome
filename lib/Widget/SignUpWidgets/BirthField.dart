import 'package:flutter/cupertino.dart';

class BirthField {
  Widget birthField(screenHeight, screenWidth, onChangeTime){
    return Container(
        height: screenHeight*0.4,
        width: screenWidth*0.853,
        child:CupertinoTheme(
            data: CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                dateTimePickerTextStyle: TextStyle(
                    fontSize: 20, fontFamily: 'Manjaribold'
                ),
              ),
            ),
            child:CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                minimumYear: 1900,
                maximumYear:2021,
                use24hFormat: true,
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (time) => onChangeTime(time))
        )
    );
  }
}