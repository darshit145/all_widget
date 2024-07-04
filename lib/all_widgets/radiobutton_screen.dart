import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radiobutton_screen extends StatefulWidget{
  @override
  State createState()=>_radiobutton_screen();
}
class _radiobutton_screen extends State<radiobutton_screen>{
String? gender;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Btn"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              Text("Boy",style: TextStyle(fontSize: 23),),
              Radio(value: "Boy", groupValue: gender, onChanged: (val){
                setState(() {
                  gender=val.toString();
                });

              }),
            ],),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Girl",style: TextStyle(fontSize: 23),),
                Radio(value: "Girl", groupValue: gender, onChanged: (val){
                  setState(() {
                    gender=val.toString();
                  });
                })
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Exit",style: TextStyle(fontSize: 23),),
                Radio(value: "Exit", groupValue: gender, onChanged: (val){
                  setState(() {
                    Navigator.pop(context);
                  });
                })
              ],
            ),
            Text("$gender"),

          ],
        ),
      ),
    );
  }

}