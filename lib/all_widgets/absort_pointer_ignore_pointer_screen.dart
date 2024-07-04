import 'package:flutter/material.dart';
class AbsortPointerIgnorePointer extends StatefulWidget {
  const AbsortPointerIgnorePointer({super.key});

  @override
  State<AbsortPointerIgnorePointer> createState() => _AbsortPointerIgnorePointerState();
}

class _AbsortPointerIgnorePointerState extends State<AbsortPointerIgnorePointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Column(
        children: [
          Center(
            child: IgnorePointer(
              child: ElevatedButton(
                child:const Text("text"),
                onPressed: () {
                  print("okok");
                }
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () => print("ok Container tapped"),
              child: Container(
                height: 220,
                width: 380,
                color: Colors.amberAccent,
                child: Center(
                  child: AbsorbPointer(
                    child: ElevatedButton(
                      onPressed: () => print("okko button tapped"),
                      child: Text("data"),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
