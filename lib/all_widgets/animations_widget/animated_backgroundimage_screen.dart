import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AnimatedImageBackGround extends StatefulWidget {
  const AnimatedImageBackGround({super.key});

  @override
  State<AnimatedImageBackGround> createState() => _AnimatedImageBackGroundState();
}

class _AnimatedImageBackGroundState extends State<AnimatedImageBackGround> {
  final List<String> li=[
    "accets/gg.png",
    "accets/ll.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedImageBackGround"),
      ),
      body: Stack(
        children: [
          animatedImageBack(),
          Center(child: Text("Hello\nWelcome Back!",style: TextStyle(fontSize: 23,color: Colors.red),),)

        ],
      )
    );
  }
  animatedImageBack(){
    return CarouselSlider.builder(
      disableGesture: false,
      itemCount: li.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage(li[index],),
                  fit: BoxFit.cover
              )
          ),
        );


      },
      options: CarouselOptions(
        aspectRatio: 5/10,
        viewportFraction: 2,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOutCirc,


      ),

    );

  }
}
