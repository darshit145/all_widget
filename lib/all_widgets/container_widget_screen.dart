
import 'package:flutter/material.dart';
class ContainerWidgetScreen extends StatelessWidget {
  const ContainerWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(90),
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
               border: Border.symmetric(horizontal: BorderSide(color: Colors.black,width: 4)),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  new BoxShadow(color: Colors.red,blurRadius: 25,offset: new Offset(10.0, 10.0))
                ]
               ),
            constraints: BoxConstraints(maxHeight: 120,maxWidth: 120),

            transform: Matrix4.rotationZ(0.2),
              child: Text("Hello I am ....",style: TextStyle(fontSize: 32),),
            ),
            Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },child: Text("Back"),)
            ),
          ],
        ),
      ),
    );
  }
}

// constraints: BoxConstraints.tight(Size size)
//     : minWidth = size.width, maxWidth = size.width,
// minHeight = size.height, maxHeight = size.height;