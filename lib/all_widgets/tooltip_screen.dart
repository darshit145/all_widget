import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tooltip_screen extends StatefulWidget{
  State createState()=>_tooltip_screen();
}
class _tooltip_screen extends State<tooltip_screen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip"),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Tooltip(
          height: 23,
          waitDuration: Duration(seconds: 2),
          showDuration: Duration(seconds: 3),

          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.all(Radius.circular(13)),

            boxShadow:[
              BoxShadow(
                color: Colors.red,
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(1, 2)
              )
            ]
          ),
          message: "This is A Tool TIP",
          child: Text("Tool_Tip With Text"),
        ),
      ),

    );
  }
}