import 'package:flutter/material.dart';
class floting_act_screen extends StatelessWidget {
  const floting_act_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(

        title: Text("floting_act_screen"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.black,
        ),
      ),
      

      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.account_balance_outlined),
        onPressed: (){},
      )
    );
  }
}
