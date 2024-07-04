import 'package:flutter/material.dart';
class animated_aligne_screen extends StatefulWidget {
  const animated_aligne_screen({super.key});

  @override
  State<animated_aligne_screen> createState() => _animated_aligne_screenState();
}

class _animated_aligne_screenState extends State<animated_aligne_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("animated_aligne_screen"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      // body: AnimatedAlign(
      //   child: Center(
      //     child: Container(
      //       height: 120,
      //       width: 129,
      //     ),
      //   ),
      // ),
    );
  }
}
