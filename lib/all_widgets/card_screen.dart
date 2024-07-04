
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card_screen extends  StatelessWidget{

  @override
  Widget build(BuildContext  context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Card_Widget"),
        backgroundColor: Colors.cyanAccent
      ),
      body:  Center(
        child: Container(
          height: 100,
          width: 100,
         // color: Colors.red,
          padding: EdgeInsets.all(12),
          child: Card(
            elevation: 36,
            shadowColor: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),


            ),
            child: Icon(Icons.account_balance),
          ),
        ),
       ),
    );
  }
}