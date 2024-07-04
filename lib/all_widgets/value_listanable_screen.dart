import 'package:flutter/material.dart';
class value_listanablebuilder_screen extends StatelessWidget {
  final ValueNotifier<int> num=ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("value_listanablebuilder_screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ValueListenableBuilder(
              valueListenable: num,
              builder: (context, value, child) {

                return Text("$value",style: TextStyle(fontSize: 32),);
              },
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: FloatingActionButton(
              tooltip: "Go Home ",
              onPressed: (){
              num.value +=1;
            },child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
