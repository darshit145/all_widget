import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
bool b=true;
class TextField_Screen extends  StatefulWidget{
  @override
  State createState()=>_TextField_Screen();
}

class _TextField_Screen extends State<TextField_Screen>{
  String Tt="";
  var coltrollerForTextFild=TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField_Screen"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
                padding:EdgeInsets.all(12),
                child:
                TextField(
                  controller: coltrollerForTextFild,

                   maxLength: 10,
                   onChanged: (Text){
                    Tt=Text;
                  },

                  keyboardType: TextInputType.number,
                    // obscuringCharacter: "@",

                  obscureText: b,


                    decoration: InputDecoration(

                        prefixIcon: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: (){
                          setState((){});

                          Display();

                          print(b);
                        },),



                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.red,width: 3)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.red,width: 5)),
                        labelText: "Password",
                        hintText: "Enter Password"
                    ),



            ),

            ),

            ElevatedButton(onPressed: (){
              // print(Tt);
              print("${coltrollerForTextFild.text.toString()}olo");
            }, child: Text("Print")),


          ],
        ),
      ),
    );
  }

}

Display(){
    if(b==true){
      b=false;
    }
     else if(b==false){
       b=true;
    }
  }
