import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class DEMO extends StatefulWidget{
  State createState()=>DEMO2();
}
class DEMO2 extends State<DEMO>   {
int start=0;
List li=[
  Container(color: Colors.greenAccent,),
  Container(color: Colors.green,),
  Container(color: Colors.greenAccent,),
];
   @override
  Widget build(BuildContext context){

    return  Scaffold(
      appBar: AppBar(
        title: Text("ok"),
      ),
      body: ListView(
        children: [
          ProductBox(
            Description: "iPhone is the top branded phone ever",
            image: "accets/th.jpg",
            price: 50000,
            Name:  "iPhone",
          ),
          ProductBox(
            Description: "iPhone is the top branded phone ever",
            image: "accets/th.jpg",
            price: 50000,
            Name:  "iPhone",
          ),
          ProductBox(
            Description: "iPhone is the top branded phone ever",
            image: "accets/th.jpg",
            price: 50000,
            Name:  "iPhone",
          ),
          ProductBox(
            Description: "iPhone is the top branded phone ever",
            image: "accets/th.jpg",
            price: 50000,
            Name:  "iPhone",
          ),
          ProductBox(
            Description: "iPhone is the top branded phone ever",
            image: "accets/th.jpg",
            price: 50000,
            Name:  "iPhone",
          ),
          ProductBox(
            Description: "iPhone is the top branded phone ever",
            image: "accets/th.jpg",
            price: 50000,
            Name:  "iPhone",
          ),
          ProductBox(
            Description: "iPhone is the top branded phone ever",
            image: "accets/th.jpg",
            price: 50000,
            Name:  "iPhone",
          ),
          ProductBox(
            Description: "iPhone is the top branded phone ever",
            image: "accets/th.jpg",
            price: 50000,
            Name:  "iPhone",
          ),
          ProductBox(
            Description: "iPhone is the top branded phone ever",
            image: "accets/th.jpg",
            price: 50000,
            Name:  "iPhone",
          )



        ],
      )
    );

  }
}



class ProductBox extends StatelessWidget{
  final Name;
  final String Description;
  final int price;
  final String image;
  ProductBox({this.Name, required this.Description,required this.image,required this.price});

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(2),
      height: 130,
      child: Card(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(image),
              Expanded(
                  child:Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${this.Name}"),
                        Text(this.Description),
                        Text("Price: ${this.price.toString()}",)

                      ],
                    ),
                  )
              )


            ],
          ),
        ),
      ),
    );
  }
}