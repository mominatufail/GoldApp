import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  String buttonText;
  VoidCallback onTap;

  ButtonWidget({super.key,required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell (
        onTap: onTap,
    child: Container(
    height: 43, width: 200,
      decoration: BoxDecoration(
    color: Colors.blue,borderRadius: BorderRadius.circular(30 )
    ),
    child: Center(child: Text(buttonText,style: TextStyle(color: Colors.white),),) ,
    //  child: Center(child: Text,),

    ));
  }
}
