import 'package:flutter/material.dart';
import 'package:gold_app/login-button-widget.dart';
class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        body: Center(child:

            //now by using this widget, we don't need to write this whole code

    //      InkWell (
    //       onTap: (){
    //
    //       },
    //     child: Container(
    //       height: 43, width: 200,decoration: BoxDecoration(
    //     color: Colors.blue,borderRadius: BorderRadius.circular(30 )
    // ),
    //      child: Center(child: Text('Login',style: TextStyle(color: Colors.white),),) ,
    //      //  child: Center(child: Text,),
    //
    // ),
    //      ),

          Column(children: [
            ButtonWidget(buttonText: 'Login',
                onTap: (){}),

            SizedBox(height: 20,),
            ButtonWidget(buttonText: 'Sign Up', onTap: (){})

          ],)
    ),
    );
  }
}





