import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePictureField extends StatefulWidget {
  ProfilePictureField(this.onTopProfile);
  final onTopProfile;

  @override
  _ProfilePictureField  createState() => _ProfilePictureField();
}

class _ProfilePictureField extends State<ProfilePictureField>{
  var images = [];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return new GestureDetector(
      child: new Container(
        height: screenHeight*0.4,
        width: screenWidth*0.853,
        decoration: new BoxDecoration(
            border: Border.all(color: Colors.black)
        ),
        child: images.isNotEmpty ? Image.file(images[images.length-1]) : Icon(Icons.add_a_photo),
      ),
      onTap: getImage,
    );
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        images.add(File(pickedFile.path));
        widget.onTopProfile(images);
      } else {
        print('No image selected.');
      }
    });
  }
}