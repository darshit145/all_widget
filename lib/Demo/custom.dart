import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double mWidth;
  final double height;
  final ShapeBorder? shape;
  final onPressed;
  final Color color;
  final Widget child;
  CustomButton({this.mWidth = 340 ,this.height = 40 ,this.shape ,required this.onPressed , required this.child ,  required this.color  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(width: 0,color: Colors.white)),
      minWidth: mWidth,
      height: height,
      onPressed:  onPressed,
      color:  color,
      child:  child,

    );

  }
}