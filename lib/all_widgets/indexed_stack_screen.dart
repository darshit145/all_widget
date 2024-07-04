import 'package:flutter/material.dart';
class IndexedStackWidgetScreen extends StatefulWidget {
  const IndexedStackWidgetScreen({super.key});

  @override
  State<IndexedStackWidgetScreen> createState() => _IndexedStackWidgetScreenState();
}

class _IndexedStackWidgetScreenState extends State<IndexedStackWidgetScreen> {
  int indexOfStack=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                  indexOfStack=0;
                });
              }, child: Text("0")),

              ElevatedButton(onPressed: () {
                setState(() {
                  indexOfStack=1;
                });
              }, child: Text("1")),

              ElevatedButton(onPressed: () {
                setState(() {
                  indexOfStack=2;
                });
              }, child: Text("2")),
            ],
          ),
          IndexedStack(
            index: indexOfStack,
            children: [
              Container(child: Image.network("https://3.bp.blogspot.com/-BHGBrI2S_K4/T0fPOackaJI/AAAAAAAAIAo/fIu-azBVhsI/s1600/tree.jpg",fit: BoxFit.fill,),),
              Container(child: Image.network("https://live.staticflickr.com/4146/4998164809_b192c5519d_b.jpg",fit: BoxFit.fill,),),
              Container(child: Image.network("https://mcdn.wallpapersafari.com/medium/13/84/wlZ31L.jpg",fit: BoxFit.fill,),),

            ],
          ),
        ],
      ),
    );

  }
}
