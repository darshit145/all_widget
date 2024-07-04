import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  list_screen2 extends StatelessWidget{
  var r=["1","2","3","4","5"];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("List Demo"),
        backgroundColor: Colors.indigo,
      ),
      body:Center(
        child: Column(
          children: [
            ListTile(title: Text("ABCD"),leading: Icon(Icons.abc)),
            ListTile(title: Text("ABCD"),leading: Icon(Icons.abc),trailing: Icon(Icons.account_balance),),

             
            

        ],
        ),
      )
    );
  }



}
class list_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ok"),
      ),

      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
        return ListTile(
          trailing:Icon(Icons.account_balance) ,
          subtitle: Text("okok"),
          title: Text("ok"),
        );
      },),
    );
  }
}