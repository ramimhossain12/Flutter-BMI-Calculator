import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BMI(),
    );
  }
}

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          backgroundColor: Color(0xfffafafa),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [

              Row(
                children: [

                  radioButton("Men", Colors.blue,0),
                  radioButton("Female", Colors.green,1),
              ],),

                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Please Enter Your Height In CM :",
                  style: TextStyle(
                    fontSize: 18.0,

                  ),
                ),

               SizedBox(height:  8.0),
   

                TextField(
                   
                   keyboardType: TextInputType.number,
                   textAlign:  TextAlign.center,
                   decoration: InputDecoration(
                     hintText: "Your Height In CM",
                     filled:  true,
                     fillColor: Colors.grey[200],
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0),borderSide: BorderSide.none),
                   ),
                ),


                     Text(
                  "Please Enter Your Weight In KG :",
                  style: TextStyle(
                    fontSize: 18.0,

                  ),
                ),

               SizedBox(height:  8.0),
   

                TextField(
                   
                   keyboardType: TextInputType.number,
                   textAlign:  TextAlign.center,
                   decoration: InputDecoration(
                     hintText: "Your Weight In KG",
                     filled:  true,
                     fillColor: Colors.grey[200],
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0),borderSide: BorderSide.none),
                   ),
                ),

                SizedBox(height:  20.0),

                Container(
                  width: double.infinity,
                  height: 44,
                  child: FlatButton(

                    onPressed: (){},
            
                    color: Colors.black,textColor: Colors.white,
                    child: Text("Calculate"),
                  ),

 
                ),


                SizedBox(height: 20.0,),
                Container(
                   width: double.infinity,
                  child: Text(
                    "Your BMI Is :",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 50.0,),
                Container(
                   width: double.infinity,
                  child: Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(

        margin:  EdgeInsets.symmetric(horizontal: 12.0),
        height: 70.0,
        child: FlatButton(
          color: currentindex == index ? color : Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {
            changeIndex(index);
          },
          child: Text(value, style:  TextStyle(color: currentindex==index? Colors.white: color,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}
