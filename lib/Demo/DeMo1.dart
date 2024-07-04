import 'dart:math';

import 'package:flutter/material.dart';
class Demo1 extends StatefulWidget {
  const Demo1({super.key});

  @override
  State<Demo1> createState() => _FooAnimationState();
}

class _FooAnimationState extends State<Demo1> {
  late List<Widget> myListOfCont;
  @override
  void initState() {
    super.initState();
    myListOfCont=[
      Content(key: UniqueKey(),),
      Content(key: UniqueKey(),),
    ];

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(children:myListOfCont ,)),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                myListOfCont.insert(1, myListOfCont[0]);
              });


            },child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                // myListOfCont.insert(0, myListOfCont[1]);
                // myListOfCont.removeAt(0);
                myListOfCont.insert(1, myListOfCont.removeAt(0));
              });


            },child: Icon(Icons.add),
          ),

        ],
      ),


    );




  }
}

class Content extends StatelessWidget{
   Content({super.key});

Color myColor= ColorGenerator.getColor();

  Widget build(BuildContext context){

    return Container(color: myColor,child: Padding(padding: EdgeInsets.all(70),),);
  }
}
class ColorGenerator{
  static List colors=[
    // Colors.redAccent,
    // Colors.red,
    // Colors.blue,
    // Colors.white,
    Colors.amber
  ];
  static Random random =new Random();
static getColor(){
  if(colors.length>0){
    print("okok**************************************************");
    return colors.removeAt(random.nextInt(colors.length));

  }else{
    return Color.fromARGB(random.nextInt(222), random.nextInt(222), random.nextInt(222), random.nextInt(222));
  }
}


}