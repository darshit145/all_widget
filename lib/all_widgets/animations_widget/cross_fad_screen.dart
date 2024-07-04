import 'package:flutter/material.dart';
class cross_feed_screen extends StatefulWidget {
  const cross_feed_screen({super.key});

  @override
  State<cross_feed_screen> createState() => _cross_feed_screenState();
}

class _cross_feed_screenState extends State<cross_feed_screen> {
  bool seter=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("cross_feed_screen"),
      ),
      body: Center(
        child: AnimatedCrossFade(
          sizeCurve: Curves.fastOutSlowIn,
          duration: Duration(seconds: 1),
          firstChild: InkWell(
            onTap: (){
              setState(() {
                seter=!seter;
              });
            },
              child: Image.asset("accets/gg.png",height: 120,width: 220,)),
          secondChild: InkWell(
            onTap: (){
              setState(() {
                seter=!seter;
              });
            },
              child: Image.asset("accets/th.jpg",height: 200,width: 200,)),
          crossFadeState: seter? CrossFadeState.showSecond: CrossFadeState.showFirst,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            seter=!seter;
          });
        },
        child: Icon(Icons.account_balance_outlined),
      ),

    );
  }
}
