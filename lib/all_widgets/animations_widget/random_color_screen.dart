import 'dart:math';
import 'package:flutter/material.dart';
class RandomColorScreen extends StatefulWidget {
  const RandomColorScreen({super.key});

  @override
  State<RandomColorScreen> createState() => _RandomColorScreenState();
}

class _RandomColorScreenState extends State<RandomColorScreen> {
  late Random random;
  late int vs;
  late int vs1;
  late int vs2;

  @override
  void initState() {
    super.initState();
    random = Random();
    vs = random.nextInt(200);
    vs1 = random.nextInt(200);
    vs2 = random.nextInt(200);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RandomColorScreen"),
      ),
      body: Stack(
        children:[
        AnimatedContainer(
          duration: const Duration(seconds: 2),
          height: double.infinity,
          width: double.infinity,
         // color: Color.fromARGB( vs,vs1,vs2,vs),
          decoration: BoxDecoration(
           gradient: LinearGradient(
           begin: Alignment.topRight,
             colors: [
               Color.fromARGB(vs1,vs,vs,vs),
               // Colors.white,
               Color.fromARGB(vs,vs1,vs2,vs)
             ],
             end: Alignment.bottomLeft
           )
          ),
          child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,

                  color: Color.fromARGB(vs,vs1,vs2,vs),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds:2),
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(
                      vs,vs1,vs2,vs
                  ),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {

                    vs = random.nextInt(200);
                    vs1 = random.nextInt(200);
                    vs2 = random.nextInt(200);


                  });


                }, child: Text("ok"))
              ],
            ),
          ),
        ),
      ]),

    );
  }


}
