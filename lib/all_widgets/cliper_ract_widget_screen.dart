import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CliperWidgetScreen extends StatefulWidget{
  @override
  State createState()=>_CliperWidgetScreen();
}
class _CliperWidgetScreen extends State<CliperWidgetScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("CliperWidgetScreen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.elliptical(50, 20)),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(122) ,bottomLeft: Radius.circular(90),bottomRight: Radius.elliptical(12, 100) ),

                child: Card(
                  elevation: 1,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                        "accets/gg.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(122) ,bottomLeft: Radius.circular(90),bottomRight: Radius.elliptical(12, 100) ),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blueGrey,
                  child: Image.asset(
                    "accets/gg.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
