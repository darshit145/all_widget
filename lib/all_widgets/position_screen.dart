import 'package:flutter/material.dart';
// class position_screen extends StatefulWidget {
//   const position_screen({super.key});
//
//   @override
//   State<position_screen> createState() => _position_screenState();
// }

class position_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("position_screen"),
      ),
      body: Stack(
        children: [
          
          Positioned(
            right: 12,
              top: 10,
              child: Text("Dr.abc")),
          Positioned(right: 12,top: 30, child: Text("Mo:-99098-565678")),
          Positioned(top: 10,left: 12, child: Text("Dr.abc")),
          Positioned(left: 12,top: 30, child: Text("Mo:-99098-565678")),

        ],
      )
    );
  }
}
