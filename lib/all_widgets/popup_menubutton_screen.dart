import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class PopupMenuButtonScreen extends StatefulWidget {

  @override
  State<PopupMenuButtonScreen> createState() => _PopupMenuButtonScreen();
}

class _PopupMenuButtonScreen extends State<PopupMenuButtonScreen> {
  String  listTitle="ListTile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButton"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("$listTitle"),
            leading: Icon(Icons.account_balance_outlined),
            trailing: PopupMenuButton(
              // icon: Icon(Icons.account_balance_outlined),
              onCanceled: () {
                setState(() {
                  listTitle="ListTile";
                });
              },
              offset:const Offset(10,25),
              enabled: true,
              padding: EdgeInsets.all(10),
              tooltip: "Boy or Girl",
              // child: Icon(Icons.account_balance_outlined),
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(
                    value: "Boy",

                      child:Text("PopupMenuItem:Boy"),
                    height: 40,
                  ),
                  PopupMenuItem(
                    height: 40,
                      value: "Girl",
                      child:Text("PopupMenuItem2:Girl")
                  ),
                  PopupMenuItem(

                    child:Text("PopupMenuItem:Cansel"),
                    height: 40,
                  ),


                ];
              },
              onSelected: (value) {
                setState(() {
                  listTitle=value;
                });
              },
            )
          ),

        ],
      ),

    );
  }
}
