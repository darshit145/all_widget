import 'package:flutter/material.dart';

class snackbar_screen extends StatefulWidget{
  @override
  State createState()=>_snackbar_screen();
}
class _snackbar_screen extends State<snackbar_screen>{
  @override
  Widget build(BuildContext  context){
    return Scaffold(
      appBar: AppBar(
        title: Text("snackbar_screen"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            final msg=SnackBar(
              content: Text("This is a A snackbar"),
               backgroundColor: Colors.blueGrey,
               elevation: 120,
              shape: StadiumBorder(side: BorderSide(color: Colors.cyan,width: 1,style: BorderStyle.solid)),
              duration:const Duration(seconds: 12),
              action: SnackBarAction(
                label: "Exit",
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(msg);
          },
          child: Text("Snackbar",),
        ),
      ),

    );
  }
}