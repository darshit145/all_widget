import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stack_Widget_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("Stack_Widget_Screen"),
        backgroundColor: Colors.cyanAccent,
      ) ,
      body: Stack(

        //alignment: Alignment.center,
        textDirection: TextDirection.ltr,
        //index: 0,

        children: [
          Container(
            height:200 ,
            width: 200,
            color: Colors.indigo,
          ),
          Container(
            margin: EdgeInsets.only(top: 100,left: 100),
            color: Colors.red,
            height: 200,
            width: 200,),
          Container(

            margin: EdgeInsets.only(top: 100,left: 100),
            height: 100,
            width: 100,
            color: Colors.black,
          ),
          Positioned(top: 170,left: 170, child: Container(height: 30,width: 30,color: Colors.amberAccent,))
        ],
      ),
    );
  }
}