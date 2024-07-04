import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class list_viewbuilder_screen extends StatefulWidget{
  @override
  State createState()=>list_viewbuilder_screen_state();
}


class list_viewbuilder_screen_state extends State<list_viewbuilder_screen> {
  var lists = ["Apple", "banana", "Mango"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter SnackBar Demo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: lists.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(lists[index]),
                  subtitle: Text("ok"),
                  trailing: Container(
                    width: 60,
                    child: ElevatedButton(
                      child: Icon(
                        Icons.delete,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        // showSnackBar(context, index);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }


}