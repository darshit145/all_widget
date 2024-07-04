import 'dart:ui';

import 'package:flutter/material.dart';
class BackGroundImg extends StatelessWidget {
  const BackGroundImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("BackGroundImg"),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(
              image:AssetImage("accets/gg.png"),
            fit: BoxFit.cover
          )
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 12,sigmaX: 12,tileMode: TileMode.decal),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Back"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
