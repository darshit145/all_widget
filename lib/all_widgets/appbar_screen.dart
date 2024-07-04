import 'package:flutter/material.dart';
class AppBarScreen extends StatefulWidget {

  @override
  State<AppBarScreen> createState() => _ThemeDemoScreenState();
}

class _ThemeDemoScreenState extends State<AppBarScreen> {
  bool isSet=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Stack(
          children: [
            Container(color: Colors.white,),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);

            }, child: Text("Back"))

          ],
        ),

      ],
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("App_Bar",style: TextStyle(color: Colors.white),),
        leading: IconButton(icon: Icon(Icons.account_balance_outlined),onPressed: () => Navigator.pop(context),),
        elevation: 12,
        backgroundColor: Colors.grey,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        iconTheme: IconThemeData(
          color: Colors.red,
          size: 30,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          Icon(Icons.account_balance_outlined),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more action
            },
          ),
          Text("This is \nActon Space",style: TextStyle(fontSize: 12),)
        ],
        flexibleSpace: ElevatedButton(
          child: Text("flexibleSpace"),
          onPressed: () {},
        ),


        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20.0), // Set the preferred height
          child: Container(
            alignment: Alignment.center,
            // color: Colors.blue, // Background color of the bottom widget
            child: Text(
              'Bottom PreferredSize',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
          automaticallyImplyLeading:false,



      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
           Text("Demonstrate Spacer"),
           Spacer(
            flex: 1,

          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),
          Spacer(
            flex: 1,
           ),
          Center(child: Icon(Icons.account_balance_outlined,),),
        ],
      ),

    );
  }
}
