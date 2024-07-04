import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_widgets/all_widgets/alert_dialog_screen.dart';
import 'package:flutter/rendering.dart';
class drawer_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,

        // leading: Icon(Icons.ac_unit),
        backgroundColor: Colors.amber,
      ),
      drawer:Drawer(
        child:SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Center(
                      child: ClipRRect(
          
                          child: Image.asset("accets/th.jpg",height: 60,),
                        borderRadius: BorderRadius.circular(120),
                      )
                  ),
                    Center(child: Text("F.D.V.",style: TextStyle(fontSize: 23),),)
                ],),
                decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
          
                Column(children: [
          
          
                  ListTile(title: Text("Home"),leading: Icon(Icons.home),onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>alert_dialog_screen()));
                  },),
                  ListTile(title: Text("Account"),leading: Icon(Icons.account_balance_outlined),onTap: ()=>print("Account Taaped"),),
                  ListTile(title: Text("Card"),leading: Icon(Icons.card_giftcard_outlined)),
                  ListTile(title: Text("Log out"),leading: Icon(Icons.logout),
                    focusColor: Colors.black,
                  tileColor: Colors.lightBlue,onTap:(){
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },),
                ],),
          
            ],
          ),
        ),
        backgroundColor: Colors.white38,
       )
    );
  }
}