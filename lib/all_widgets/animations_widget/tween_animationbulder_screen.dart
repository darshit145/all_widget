import 'package:flutter/material.dart';
class tween_animation_screen extends StatefulWidget {
  const tween_animation_screen({super.key});

  @override
  State<tween_animation_screen> createState() => _tween_animation_screenState();
}

class _tween_animation_screenState extends State<tween_animation_screen> {
  double aa=100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tween_animation_screen"),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          duration: const Duration(seconds: 3),
          builder: (context, value, child) {
            return IconButton(
              iconSize: value as double,
                onPressed: (){
              setState(() {
                aa=aa==100?300:100;

              });
            }, icon: Icon(Icons.flutter_dash,color: Colors.black,));
          },
          tween: Tween(end: aa,begin: 99),
        ),
      ),
    );
  }
}
