import 'package:flutter/material.dart';
class FractionalWidgetScreen extends StatelessWidget {
  const FractionalWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionalWidgetScreen"),
      ),
      body: Column(
        children: [
          Container(
            height: 100,width: 100,color: Colors.redAccent.shade700,
            child: Baseline(
                baseline: 123,
              baselineType: TextBaseline.alphabetic,
              child: FlutterLogo(size: 23,),
            ),
          ),
          FractionalTranslation(translation: Offset(2,5),
            child: Container(height: 100,width: 100,color: Colors.redAccent,),
          ),
          FractionalTranslation(translation: Offset(1,1),
            child: Container(height: 100,width: 100,color: Colors.redAccent.shade400,),
          )
        ],
      ),
    );
  }
}
