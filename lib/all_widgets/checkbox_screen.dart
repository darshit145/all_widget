
import 'package:flutter/material.dart';
class checkbox_screen extends StatefulWidget{
  @override
  State createState()=>checkbox_screen11();
}

class checkbox_screen1 extends State<checkbox_screen>{
  bool kt=true;
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("ok"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Text("Check Box"),

          Checkbox(value: kt, onChanged: (val){
            setState((){
          kt=val!;
              print(kt);
             });
          }),

          CheckboxListTile(value: kt, onChanged: (value) {
            setState(() {
              kt=value!;
            });
          },)
        ],
      ),
    );


  }
  display(){
    if(kt==false){
      kt=true;
    }else{
      kt=false;
    }
  }
}



class checkbox_screen11 extends State<checkbox_screen>{
  bool kr=true;
  bool kt=true;
  bool ktr=true;
  bool ktrr=true;
  String ans="";
  String ans2="";

  @override
  Widget build(BuildContext context){
    display(){
      if(ktr==true && ktrr==true){
        ans2="Male And felaale";
      }else if(ktr==true  &&ktrr==false){
        ans2="male";
      }else if(ktr==false  && ktrr==true){
        ans2="female";
      }else if(ktr==false  && ktrr==false){
        ans2="other";
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("ok"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            CheckboxListTile(
              title: Text("Female"),
              value:ktr , onChanged: (value) {
              setState(() {
                ktr=value!;
                display();
              });

            },),
            CheckboxListTile(
              title: Text("Male"),
              value:ktrr , onChanged: (value9) {
              setState(() {
                ktrr=value9!;
                display();

              });

            },),
            Text("$ans2"),
            CheckboxListTile(value: kr,
              title: Text("Hello"),
              enabled: true,


              shape: OutlineInputBorder(

                borderRadius: BorderRadius.circular(23),
                borderSide: BorderSide(width: 2,color: Colors.red)

              ),
              tileColor: Colors.black12,
              subtitle: Text("This is subtitle "),
              onChanged: (value) {
              setState((){
                kr=value!;
                if(value==true){
                  ans="Hello and $kr";
                }else{
                  ans="$kr";
                }
              });
            },),
            Text("$ans ",style: TextStyle(fontSize: 23),),
            Row(children: [
              Text("Data"),
              Checkbox(value:kt , onChanged: (value) {
                setState((){

                });
                kt=value!;
              },)

            ],)


          ],
        ),
    );


  }
}


