import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class toasted_screen extends StatefulWidget{
  @override
  State createState()=>toasted_screen1();
}
class toasted_screen1 extends State<toasted_screen>{
  final _kt=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("ok"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ElevatedButton(onPressed: (){
          Fluttertoast.showToast(
              msg: "Sign in...",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM_RIGHT,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 18.0
          );
        },child: Text("Toast"),),
      ),

    );


  }
}


