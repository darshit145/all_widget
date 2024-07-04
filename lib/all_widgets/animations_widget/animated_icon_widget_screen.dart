import 'package:flutter/material.dart';
class AnimatedIconScreen extends StatefulWidget {
  const AnimatedIconScreen({super.key});

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen> with SingleTickerProviderStateMixin {
  bool player=false;
  late AnimationController animationController;
  void initState(){
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 2));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedIconDemo"),
      ),
      body: Center(
        child: GestureDetector(

          onTap: () {
            player?animationController.forward():animationController.reverse();
            player=player?false:true;

          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedIcon(
                size: 50,
                color: Colors.deepPurpleAccent.shade100,
                icon: AnimatedIcons.add_event,
                progress: animationController,

              ),
              AnimatedIcon(
                  icon: AnimatedIcons.arrow_menu,
                  size: 50,
                  color: Colors.deepPurpleAccent.shade100,
                  progress:animationController
              ),
              AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: animationController,
                color: Colors.deepPurpleAccent.shade100,
                size: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
