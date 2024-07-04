import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class switch_screen extends StatefulWidget{
  State createState()=>_switch_screen();
}
class _switch_screen extends State<switch_screen>{
  var val=true;
  var val2=true;
  var val3=true;
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("switch_screen"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: displayerd()[1],
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: Switch(
                value: val,
                activeColor: Colors.blueGrey,
                onChanged: (value) {
                  setState(() {
                    val=value;
                  });
                },
              ),
            ),

            Center(
              child: SwitchListTile(
                 secondary: displayerd()[0],
                title: Text("Light on off ",style: TextStyle(color:displayerd()[2] ),),
                subtitle: Text("ok",style: TextStyle(color:displayerd()[2] )),
                value: val2,
                onChanged: (value) => setState(() {
                  val2=value;
                })
              ),
            ),
           
          ],
        ),
      ),
    );
  }
  List displayerd(){
    if(val2==true){
      return [Icon(Icons.nightlight,color: Colors.black,),Colors.white38,Colors.black];
    }else{
      return [Icon(Icons.sunny,color: Colors.white,),Colors.black54,Colors.white];
    }
  }
}