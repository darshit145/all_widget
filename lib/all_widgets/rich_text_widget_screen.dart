import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Rich_Text_widget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Rich_Text_widget") ,
        backgroundColor:Colors.cyanAccent ,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        RichText(

        text:  TextSpan(
        text: 'Don\'t have an account?',
            style: TextStyle(color: Colors.black, fontSize: 20),
            children: [
              WidgetSpan(
                  child: Padding(
                  padding:EdgeInsets.all(12),
              child: Icon(Icons.abc),)),
              TextSpan(
                text: ' Sign up',
                style: TextStyle(color: Colors.blueAccent, fontSize: 20),
               recognizer: TapGestureRecognizer()..onTap=(){print("ok");}
              ),
            ]
        ),
        ),

        ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("back"))
          ],
        ),
      ),
    );
  }
}
class OK extends StatelessWidget{
  Widget build(BuildContext context)=>Scaffold(

    body: RichText(
      text: TextSpan(
        text: "okk",
            children: [
              TextSpan(text: "ok")
          ]
      ),
    ),
  );
}