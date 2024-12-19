import 'package:flutter/material.dart';

class EvenOdd extends StatefulWidget {

  const EvenOdd({super.key});

  @override
  State<EvenOdd> createState() => _EvenOddState();
}

class _EvenOddState extends State<EvenOdd> {
  int n1=0;
  int res=0;
  TextEditingController n1Controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(backgroundColor:Colors.blueAccent, onPressed:(){
              n1=int.parse(n1Controller.text);
              int mod=res=n1%2;
              if(mod==0)
                print('number is even=$n1');
              if(mod==1)
                print('number is odd=$n1');
            }
            ),
            appBar: AppBar(title:Text('Even/Odd Checker',),backgroundColor: Colors.blueAccent,
              centerTitle: true,),
            body: Padding(
                padding:  EdgeInsets.all(100.0),
                child: Column(   //why we use pubspet yml in android studio using flutter
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: n1Controller,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Number'
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('Total Price Rs. $n1',style: TextStyle(color: Colors.yellowAccent),),
                    ]
                )
    )
        )
            );

  }
}

