import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class icon_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("icon Demo"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.access_alarm_outlined,size: 50,color: Colors.amber,),
            Text("Alarm")
          ],
        ),
      )
      
      ,);
  }
}