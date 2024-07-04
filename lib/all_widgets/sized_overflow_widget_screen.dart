import 'package:flutter/material.dart';
class SizedOverFlowWidget extends StatefulWidget {
  const SizedOverFlowWidget({super.key});

  @override
  State<SizedOverFlowWidget> createState() => _SizedOverFlowWidgetState();
}

class _SizedOverFlowWidgetState extends State<SizedOverFlowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedOverFlowWidget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.deepPurpleAccent.shade100,
              child: SizedOverflowBox(
                size: Size(100,200),
                child: ElevatedButton(
                  onPressed: () {

                  },child: Text("This is Sized\noverflow box demo"),
                ),
              ),
            ),
          ),
          Text("LimitedBox Widget Demo"),
          Center(
            child: LimitedBox(
              maxWidth: 200,
              maxHeight: 200,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.deepPurple.shade100,
              ),
            ),
          ),
          Text("this is OverflowBox"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.deepPurple.shade200,
                child: OverflowBox(
                  minWidth: 120,
                  minHeight: 120,
                  maxHeight: 140,
                  maxWidth: 140,
                  child: Container(height: 160,width: 160,color: Colors.green.shade100,),
                ),
              ),
            ),
          )


        ],
      ),
    );
  }
}
