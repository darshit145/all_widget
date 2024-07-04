import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button_navigation_bar_screen extends StatefulWidget{
  State createState()=>_button_navigation_bar_screen();
}
class  _button_navigation_bar_screen extends State<button_navigation_bar_screen>{
  int currentIndex=0;
  List body=[
    Center(child: ElevatedButton(onPressed: (){},child: Text("ok"),),),
    Icon(Icons.account_balance_outlined,),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("button_navigation_bar_screen"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: body[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex=value;

          });
        },
        items:  [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home" ),
          BottomNavigationBarItem(icon:Icon(Icons.account_balance_outlined),label: "Bank" ),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: "Person" ),
        ],
      ),

    );
  }
}