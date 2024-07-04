import 'package:flutter/material.dart';
class animate_screen extends StatefulWidget{
  State createState()=>DEMO2();
}
class DEMO2 extends State<animate_screen>with SingleTickerProviderStateMixin{
  late Animation  ani;
  late Animation  ani2;
  late Animation  rotation;
  late AnimationController anic;
  void initState(){
    super.initState();
    anic=AnimationController(vsync: this,duration: Duration(seconds: 5));
    ani=Tween(begin: 1.0,end: 230.0).animate(anic);
    rotation=Tween(begin: 1.0,end: 0.009).animate(anic);
    ani2=ColorTween(begin: Colors.red,end: Colors.greenAccent).animate(anic);
    anic.addListener((){
      setState(() {

      });
    });
    anic.forward();
  }
  @override
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
          title: Text("ok"),
          // backgroundColor: Colors.blueGrey,
        ),
        body: Center(
            child: Container(
              height: ani.value,
              width: ani.value,
              color: ani2.value,
              transform: Matrix4.rotationZ(rotation.value),

            )
        )

    );


  }
}


