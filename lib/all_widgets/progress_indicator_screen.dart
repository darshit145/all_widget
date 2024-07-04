import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:async';

class progressindicator extends StatefulWidget{
  @override
  State  createState()=> _progressindicator();
}
class _progressindicator extends State<progressindicator>{
  double value=0.1;
  void update(){
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
        value=value+0.0001;
      });
    });
  }
  @override
  Widget build(BuildContext context){
    if(value<1.0){
      update();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Bar"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.black12,

            ),
            Container(height: 10,),
            CircularProgressIndicator(
              strokeWidth: 10,

              value: value,
              valueColor: AlwaysStoppedAnimation(Colors.black),

            ),
            Container(height: 30,
            child: Devin()
            ),


            LinearProgressIndicator(
              value: value,
              //valueColor: AlwaysStoppedAnimation(Colors.black),
              backgroundColor: Colors.cyan,
              color: Colors.black,
              minHeight: 7.5,
            )

          ],
        ),
      ),
    );
  }
  Widget? Devin(){
    if(value <1.0) {
      return Text('${(value * 100).round()}%');
    }
    else{
      return Text("Compleated");
    }
  }
}