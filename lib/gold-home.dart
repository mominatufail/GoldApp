
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gold_app/color-text-widget.dart';
class GoldHome extends StatefulWidget {
  const GoldHome({super.key});

  @override
  State<GoldHome> createState() => _GoldHomeState();
}

class _GoldHomeState extends State<GoldHome> {
  TextEditingController goldPriceController=TextEditingController();
  TextEditingController tolaQuantityController=TextEditingController();
  TextEditingController gramsController=TextEditingController();
  TextEditingController ratiController=TextEditingController();
  TextEditingController pointsController=TextEditingController();

  double res=0.0;
  double totalTolaPrice=0.0;
  double totalGramPrice=0.0;
  double totalRatiPrice=0.0;
  double totalPointsPrice=0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //----floating action button is widget and also property----

      floatingActionButton: FloatingActionButton(backgroundColor: Colors.lightGreenAccent,
          child: Icon(Icons.add_circle_sharp,color: Colors.blueGrey,),

          onPressed: (){
        if(goldPriceController.text=='')
          {
            Get.snackbar("Error", "Gold Price must be filled");
          }

       else
       {    //goldPriceController.text="0";
        if(tolaQuantityController.text=="")
          {
            tolaQuantityController.text="0";
          }
        if(gramsController.text=="")
          {
            gramsController.text="0";
          }
        if (ratiController.text=="")
          {
            ratiController.text="0";
          }
        if (pointsController.text=='')
          {
            pointsController.text="0";
          }

            double goldPrice=double.parse(goldPriceController.text);
            double tolaQuantity=double.parse(tolaQuantityController.text);
            double grams=double.parse(gramsController.text);
            double rati=double.parse(ratiController.text);
            double points=double.parse(pointsController.text);

            //----- find RS. of 1 gram----
            double pricePerGram=goldPrice/12;

            //---find total price of grams---
            totalGramPrice=pricePerGram*grams;
            totalTolaPrice=goldPrice*tolaQuantity;

            // -----to find per rati-------
            double priceperRati=goldPrice/96;
            totalRatiPrice=priceperRati*double.parse(ratiController.text);

            //-----to find per point----
            double pricePerPoint=goldPrice/960;
            totalPointsPrice=priceperRati*double.parse(pointsController.text);

            res=(goldPrice*tolaQuantity)+totalGramPrice+totalRatiPrice;

            setState(() {

              },);
          }}),

      appBar: AppBar(
        title: Text('Gold App'),
        centerTitle: true,),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black54),
              controller: goldPriceController,
              decoration: InputDecoration(
                //hintStyle:,
                  hintText: "Enter Tola Price"
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black54),
              controller: tolaQuantityController,
              decoration: InputDecoration(
                  hintText: "Enter Tola Quantity"
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black54),
              controller: gramsController,
              decoration: InputDecoration(
                hintText: "Enter Grams Price",
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black54),
              controller: ratiController,
              decoration: InputDecoration(
                //hintStyle:,
                  hintText: "Enter Rati Price"
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black54),
              controller: pointsController,
              decoration: InputDecoration(
                hintText: "Enter Points",
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text('Total Price Rs. $res',style: TextStyle(color: Colors.green.shade900),),
          SizedBox(height: 10,),
          Text('Total Gram Price Rs. $totalGramPrice',style: TextStyle(color: Colors.green.shade900),),
          SizedBox(height: 10,),
          Text('Total Tolal Price Rs. $totalTolaPrice',style: TextStyle(color: Colors.green.shade900),),
          SizedBox(height: 10,),
          Text('Total Rati Price Rs. $totalRatiPrice',style: TextStyle(color: Colors.green.shade900),),
          SizedBox(height: 10,),
          Text('Total Points Price Rs. $totalPointsPrice',style: TextStyle(color: Colors.green.shade900),),
          SizedBox(height: 10,),

           FloatingActionButton(onPressed: (){

            Get.snackbar(
              //goldPriceController.clear();
              icon: Icon(Icons.error_rounded),
              'Error',               ///---title of error---
              titleText: Text('Error',style: TextStyle(),),
              duration: Duration(seconds: 2),
              'Field must be filled' ,     //description of title
              backgroundColor: Colors.white.withOpacity(1),

            );
           }
           ),
        ],
        ),
      ),
    );
  }
}
