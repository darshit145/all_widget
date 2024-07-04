import 'package:flutter/material.dart';

class slider_screen extends StatefulWidget{
  State createState()=>_slider_screen();
}
class _slider_screen extends State<slider_screen>{

  int _val=16;
  RangeValues val=const RangeValues(1, 100);
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("slider_screen"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Sound:-"),
              ),
              Center(
                child: Slider(
                  onChanged: (value) {
                    setState(() {

                      _val=value.round();

                    });

                  },
                  value:_val.toDouble(),
                  min: 0,
                  divisions: 12,
                  activeColor: Colors.greenAccent,
                  inactiveColor: Colors.blueGrey,

                  label: "$_val",

                  max: 100,

                ),
              ),
              Displayer(_val),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("RangeSlider:-"),
            Center(
              child: RangeSlider(
                values: val,
                min: 1,
                max: 100,
                activeColor: Colors.greenAccent,
                inactiveColor: Colors.black,
                divisions: 10,
                labels: RangeLabels(
                  "Start",
                  val.end.round().toString(),
                ),
                onChanged: (value) {
                  setState(() {
                    val=value;
                  });

              },),
            ),
            Text("ok"),
          ],)

          ],),



    );
  }
  Widget Displayer(var r){
    if(r>22){
      return  Icon(Icons.music_note_sharp);
    }
    else{
      return Icon(Icons.music_off);
    }
  }
}