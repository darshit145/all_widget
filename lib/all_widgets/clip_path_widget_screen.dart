import 'package:flutter/material.dart';
class ClipPathWidgetScreen extends StatefulWidget {
  const ClipPathWidgetScreen({super.key});

  @override
  State<ClipPathWidgetScreen> createState() => _ClipPathWidgetScreenState();
}

class _ClipPathWidgetScreenState extends State<ClipPathWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipPathWidgetScreen"),
      ),
      body: Stack(
        children:
        [
          ClipPath(
          clipper: MyCustomCliper(),
          child: Container(
            color: Color.fromARGB(255, 57, 127, 151),

            height: 150,
            width: double.infinity,
          ),
        ),

      ]),
    );
  }
}
class MyCustomCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double h=size.height;
    double w=size.width;
    final path=Path();

    path.lineTo(0, h);
    // path.lineTo(h, h-12);
    // path.quadraticBezierTo(w*0.2, h+150, w, h);
// path.lineTo(h, 50);
    path.quadraticBezierTo(w*0.9, h-150, w, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.close();

    return path;
  }
  @override
  bool  shouldReclip(CustomClipper<Path> oldClipper){
    return false;
  }
}