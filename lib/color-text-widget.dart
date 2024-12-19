import 'package:flutter/material.dart';
class ColorTextWidget extends StatelessWidget {
  //----first we'll define data member
  String text;

 ColorTextWidget({super.key,
   required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(color: Colors.yellowAccent,fontSize: 15),);
  }
}
