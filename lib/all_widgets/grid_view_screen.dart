import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class gridviewscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ok"),
        backgroundColor: Colors.blue,
      ),

      body: Column(children: [
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>gridviewscreen2()));
        }, child: Text("GridViewCount")),
        ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>gridviewcount()));
        }, child: Text("GridViewExtends")),
        ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Gridviewbuilder()));
        }, child: Text("Gridviewbuilder")),
      ],),
    );
  }
}
class gridviewscreen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid_View"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
          crossAxisCount:3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          Container(color: Colors.blue,),
          Padding(padding:EdgeInsets.all(10),
          child: Container(color: Colors.red,),),
          Container(color: Colors.blueGrey,),
          Container(color: Colors.indigo,),

        ],
      ),

    );
  }
}
class gridviewcount extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid_View"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.extent(maxCrossAxisExtent: 90,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: [
        Container(color: Colors.red,),
        Container(color: Colors.indigo,),
        Container(color: Colors.white12,),
        Container(color: Colors.blueGrey,),
        Container(color: Colors.amber,),
        Container(color: Colors.yellow,),
        Container(color: Colors.yellow,),
      ],
      )

    );
  }
}


class Gridviewbuilder extends StatelessWidget{
  final colorName=[
    Colors.yellow,
    Colors.amber,
    Colors.blue,
    Colors.red,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("ok"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(

itemCount: colorName.length,
         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: colorName[index],height: 100,),
          );

      },),
    );


  }
}


