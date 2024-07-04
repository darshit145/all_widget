import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class image_slider_screen extends StatefulWidget{
  State createState()=>_image_slider_screen();
}
class _image_slider_screen extends State<image_slider_screen>{
  final List Source=[Colors.blueGrey,Colors.greenAccent,Colors. blue];
  // final List image=[
  //   "https://wallpaperaccess.com/full/4723250.jpg",
  //   "https://wallpaperaccess.com/full/4723250.jpg",
  //   "https://wallpaperaccess.com/full/4723250.jpg",
  //
  // ];
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("image_slider_screen"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            enlargeCenterPage: true,

          ),
          // items: image.map((e) {
          //   return Builder(builder: (BuildContext context) {
          //     return Padding(padding: EdgeInsets.all(1),
          //       child:Container(child: Image.network(e),) ,
          //     );
          //    // return Container(color: e,);
          //   },);
          // }).toList(),
          items: [
            Image.network("https://wallpaperaccess.com/full/4723250.jpg",),
            Image.asset("accets/th.jpg"),
            Image.network("https://wallpaperaccess.com/full/4723250.jpg",),
            Image.asset("accets/th.jpg"),
            Image.network("https://wallpaperaccess.com/full/4723250.jpg",),
            Image.asset("accets/th.jpg")

          ],
        ),

      ),
    );
  }
}