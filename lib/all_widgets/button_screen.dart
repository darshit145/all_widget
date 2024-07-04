import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  Button_Screen extends  StatelessWidget{
  // List<ItemList> Name=[ItemList(1,"Green")];
  List Name=["Green","Red"];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Button_Screen"),
      // backgroundColor: Colors.cyanAccent,
      ),

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){}, child: Text("Text Button")),
            OutlinedButton(onPressed: (){}, child: Text("Outlined Button")),
            ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),
            FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            InkWell(
              splashColor: Colors.red,
              onDoubleTap: (){print("ok");},
              child: Container(height: 120,width: 120 ,),
            ),
            InkWell(
              onTap: () {
                print('Button tapped');
              },
              splashColor: Colors.white.withOpacity(0.5),
              highlightColor: Colors.red,
              radius: 100,
              borderRadius: BorderRadius.circular(100),
              child: Padding(
                padding: const EdgeInsets.all(42.0),
                child: Icon(Icons.add),
              )
            ),
            InkResponse(
                onTap: () {
                  print('Button tapped');
                },
                splashColor: Colors.blueGrey ,
                highlightColor: Colors.blueGrey.shade200,

                radius:68,
                // radius: 100,
                // borderRadius: BorderRadius.circular(100),
                child: Padding(
                  padding: const EdgeInsets.all(42.0),
                  child: Icon(Icons.add),
                )
            ),
            MaterialButton(
              focusColor: Colors.red,
              height: 40,elevation: 1,
              color: Colors.blueGrey,
              highlightColor: Colors.red,
              splashColor: Colors.redAccent.shade100,

              onPressed: () {},
              child: Text("This is Material Button"),
            ),


          ],
        ),
      ),
    );
  }
}