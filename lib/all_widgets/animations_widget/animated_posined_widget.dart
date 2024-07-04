import 'package:flutter/material.dart';
class AnimatedPostnesScreen extends StatefulWidget {
  const AnimatedPostnesScreen({super.key});

  @override
  State<AnimatedPostnesScreen> createState() => _AnimatedPostnesScreenState();
}

class _AnimatedPostnesScreenState extends State<AnimatedPostnesScreen> {
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositned"),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            left: isSelected?149:200,
            bottom: isSelected?60:260,
            height: isSelected?200:100,
            width: isSelected?60:20,
              child: GestureDetector(
                onTap: () {

                },
                child: Container(color: Colors.black,),
              ),
          ),
          AnimatedPositioned(
               width: isSelected?200:50,
              height: isSelected?50:200,
              top: isSelected?50:200,
              left: isSelected?75:150,
              curve: Curves.easeInOut,
              duration: Duration(seconds: 2),
               child:Container(
                color: Colors.deepPurpleAccent,
                child: GestureDetector(
                  child: Container(
                    color: isSelected?Colors.red:Colors.white,
                  ),
                  onTap: () {
                    setState(() {
                      isSelected=!isSelected;
                      print(isSelected);
                    });
                  },
                ),
              ),

          ),

        ],
      ),
    );
  }
}
