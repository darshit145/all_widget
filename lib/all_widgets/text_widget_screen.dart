import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text_widget_screen extends StatelessWidget{
  @override
  Widget  build(BuildContext  context){
    return Scaffold(
      appBar: AppBar(title: Text("Text_Wdget"),backgroundColor: Colors.amberAccent,),

      body:  Column(
        children: [
          Center(
            child: Text("ok",style: Theme.of(context).textTheme.displayLarge,),
          ),
          Center(
            child: Text("ok Hello",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                letterSpacing: 8 ,
                wordSpacing: 12,
                backgroundColor: Colors.yellow,
                shadows: [Shadow(color: Colors.black,offset: Offset(10,10),blurRadius:12)]

              ),),
          ),
        ],
      )
    );
  }
}