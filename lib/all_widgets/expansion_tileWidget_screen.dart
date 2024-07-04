import 'package:flutter/material.dart';
class ExpansionTileWidgetScreen extends StatefulWidget {
  const ExpansionTileWidgetScreen({super.key});

  @override
  State<ExpansionTileWidgetScreen> createState() => _ExpansionTileWidgetScreenState();
}

class _ExpansionTileWidgetScreenState extends State<ExpansionTileWidgetScreen> {
  bool customIcon=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [

          ExpansionTile(
            leading: Icon(Icons.ac_unit),
            maintainState: false,
            backgroundColor: Colors.blueGrey,
            initiallyExpanded: customIcon,
            onExpansionChanged: (value) {
              setState(() {
                customIcon=value;
              });
            },

            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(21),

            ),

            title: Text("ExpansionTile"),
            children: [
              Divider(height: 2,color: Colors.white,),
              ListTile(
                onTap: (){


                },
                title: Text("ListTile ",style: TextStyle(color: Colors.black),),
                subtitle: Text("Subtitle using ListTile\nIn ExpansionTile",style: TextStyle(color: Colors.white),),
              ),
              Divider(height: 2,color: Colors.white,),
              ListTile(
                title: Text("This is another List tile in Expansiontile ",style: TextStyle(color: Colors.black),),
                subtitle: Text("Subtitle using ListTile\nIn ExpansionTile",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),

        ],
      ),

    );
  }
}
