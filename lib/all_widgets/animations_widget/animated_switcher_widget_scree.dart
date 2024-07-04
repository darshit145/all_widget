import 'package:flutter/material.dart';
class AnimatedSwitcherWidgetScreen extends StatefulWidget {
  const AnimatedSwitcherWidgetScreen({super.key});

  @override
  State<AnimatedSwitcherWidgetScreen> createState() => _AnimatedSwitcherWidgetScreenState();
}

class _AnimatedSwitcherWidgetScreenState extends State<AnimatedSwitcherWidgetScreen> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSwitcherWidgetScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              transitionBuilder: (child, animation) {
                return ScaleTransition(scale: animation,child: child,);
              },
                duration:Duration(seconds: 1),
              child: Text("$count",key: ValueKey(count),style: TextStyle(fontSize: 33)),
            ),
            MaterialButton(
              color: Colors.blueGrey,
              onPressed: () {
              setState(() {
                count++;
              });
            },child: Text("Click"),),
            AnimatedSwitcher(
                duration:Duration(seconds: 1),
              child: Text("$count",key: ValueKey(count),style: TextStyle(fontSize: 33)),
            )
          ],
        ),
      ),
    );
  }
}
