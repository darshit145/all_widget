import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Raw_and_Column extends  StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Raw  Cols"),
        backgroundColor: Colors.cyanAccent),

      body: Container(
        color: Colors.amberAccent.shade100,
       width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(height: 120,width: 120,color: Colors.red.shade50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                Text("*",style: TextStyle(fontSize: 100)),
                Text("*",style: TextStyle(fontSize: 100)),
                // Text("*",style: TextStyle(fontSize: 100)),
                // Text("*",style: TextStyle(fontSize: 100)),
                // Text("*",style: TextStyle(fontSize: 100)),
                // Text("*",style: TextStyle(fontSize: 100)),
                // Text("*",style: TextStyle(fontSize: 100) )
                ],),

            ),
            Container(height:120,width: 120, color: Colors.red.shade50,),
            Container(height: 120,width: 120,color: Colors.red.shade50,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child:const Text("Back"))
          ],
        ),
      ),
    );
  }
}