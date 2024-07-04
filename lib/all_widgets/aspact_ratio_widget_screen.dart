import 'package:flutter/material.dart';
class AspactRatioWidgetScreen extends StatefulWidget {
  const AspactRatioWidgetScreen({super.key});

  @override
  State<AspactRatioWidgetScreen> createState() => _AspactRatioWidgetScreenState();
}

class _AspactRatioWidgetScreenState extends State<AspactRatioWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspactRatioWidgetScreen"),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: AspectRatio(
            aspectRatio: 1.99,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ),

      ),
    );
  }
}
