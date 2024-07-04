import 'package:flutter/material.dart';
class DemoOfValueKey extends StatefulWidget {
  const DemoOfValueKey({super.key});

  @override
  State<DemoOfValueKey> createState() => _DemoOfValueKeyState();
}

class _DemoOfValueKeyState extends State<DemoOfValueKey> {
  bool ifIsItSet=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DemoOfValueKey"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(ifIsItSet)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                key: ValueKey(MyCustomKey(1)),

                decoration: InputDecoration(
                  label: Text("Enter an E:mail"),
                  border: OutlineInputBorder()
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              key: ValueKey(MyCustomKey(2)),

              decoration: InputDecoration(
                label: Text("Enter Mobile No:"),
                border: OutlineInputBorder()
              ),
            ),
          ),
          Center(
            child: MaterialButton(onPressed: (){
              setState(() {
                ifIsItSet=!ifIsItSet;
              });
            },color: Colors.blueGrey, child: Container(
              width: 70,
              child: Row(
                children: [
                  if(ifIsItSet)
                    Text("Hide"),
                  if(ifIsItSet)
                    Icon(Icons.hide_source_outlined),

                  if(!ifIsItSet)
                    Text("Show"),
                  if(!ifIsItSet)
                    Icon(Icons.remove_red_eye_sharp),



                ],
              ),
            ),),
          )
        ],
      ),
    );
  }
}
class MyCustomKey{
final int key;
MyCustomKey(this.key);

}
