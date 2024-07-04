import 'package:flutter/material.dart';
class hero_animation_screen extends StatefulWidget {
  const hero_animation_screen({super.key});

  @override
  State<hero_animation_screen> createState() => _hero_animation_screenState();
}

class _hero_animation_screenState extends State<hero_animation_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hero_animation_screen"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Duration(seconds: 1);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondHeroScreen();
            },));
          },
          child: Hero(
            tag: "ok",
            child: Stack(
                children:[
                  Container(
                    color: Color.fromARGB(12, 1, 10, 125),height: 110,width: 200,),


                  Positioned(
                      bottom: 10,
                      child: Image.asset("accets/gg.png",height: 120,width: 200,)),
                  Positioned(
                    top: 90,

                      child: Text("G360..")),
                  Positioned(
                    top: 90,
                      left: 170,
                      child: Icon(Icons.people_alt)
                  ),
                  Positioned(
                    bottom: 70,
                      left: 165,
                      child:IconButton(


                        onPressed: (){
                          deleteDialogBox();

                        },
                        icon: Icon(Icons.delete,color: Colors.white,),
                      ) ),

            ]),
          ),
        ),
      ),
    );
  }
  deleteDialogBox(){
    return showDialog(
        context: context, builder: (context) {
          return AlertDialog(
            title: Text("Delete"),
            icon: Icon(Icons.delete),
            content: Text("Are u Really want to delete it?"),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Delete"))
            ],
          );
        },);
  }
}
class SecondHeroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Detailed"),
      ),
      body: Column(
        children: [
          Hero(tag: "ok",
              child: Image.asset("accets/gg.png")
          ),
          Hero(tag: "ok",

              child:Column(
                children: [
                  Text("G630~"),
                  Text("""The G360 is a versatile gadget that enhances your daily life through its compact design and multifunctional features, seamlessly integrating into your routine for convenience and efficiency."""),
                ],
              )
          )
        ],
      ),
    );
  }
}
