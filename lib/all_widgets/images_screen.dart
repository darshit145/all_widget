import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class image_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(" image_screen"),
        backgroundColor: Colors.cyanAccent,
      ),
      body:Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset("accets/th.jpg"),
            ),
            Text("User",style: TextStyle(fontSize: 20),),
            Image.network(
              'https://picsum.photos/250?image=9',
              height: 150,
              width: 150,
            )

          ],
        ),
      )  
    );
  }
}