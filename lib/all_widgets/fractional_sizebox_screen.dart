import 'package:flutter/material.dart';
class FractionalSizeBoxWidgetScreen extends StatelessWidget {
  const FractionalSizeBoxWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionalSizeBoxWidgetScreen"),
      ),
      body: Center(
        child: FractionallySizedBox(
          heightFactor: 0.05,
          alignment: Alignment.topRight,
          widthFactor: 1.9,
          child:ElevatedButton(
            child: Text("ok"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
