import 'dart:async';

// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:all_widgets/screen/home_screen.dart';

class splash_screen extends StatefulWidget {
  State createState() => splash_screen2();
}

class splash_screen2 extends State<splash_screen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  int seconds = 4;
  var ops = 0.0;

  void initState() {
    // final player=AudioPlayer();
    //  audioplayers: ^5.2.1
    // player.play(UrlSource('accets/ad.mp3'));
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: seconds));
    animation =
        Tween<double>(begin: 21.0, end: 67.0).animate(animationController);
    animationController.addListener(() {
      setState(() {
        ops = ops == 0.0 ? 1.0 : 0.0;

        // print(anime.value);
      });
    });
    animationController.forward();

    Timer(Duration(seconds: seconds), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage("accets/gg.png"), fit: BoxFit.cover)),
        // color: Colors.black,
        child: Center(
          child: AnimatedOpacity(
              opacity: ops,
              duration: const Duration(seconds: 1),
              child: Text(
                "WellCome",
                style:
                    TextStyle(color: Colors.white, fontSize: animation.value),
              )),
        ),
      ),
    );
  }
}
