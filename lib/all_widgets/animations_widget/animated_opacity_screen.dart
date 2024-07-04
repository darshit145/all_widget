import 'package:flutter/material.dart';

class animated_opacity_screen extends StatefulWidget {
  // const DEmo2({Key? key}) : super(key: key);

  @override
  State<animated_opacity_screen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<animated_opacity_screen> {
  var opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              curve: Curves.bounceInOut,
              alwaysIncludeSemantics: false,
              duration: const Duration(seconds: 2),
              child: FlutterLogo(
                size: 50,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  print(opacity);
                  opacity = opacity == 0.0 ? 1.0 : 0.0;
                });
              },
              child: const Text("Toggle Opacity"),
            ),
          ],
        ),
      ),
    );
  }
}
