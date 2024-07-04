import 'package:flutter/material.dart';
class GlobalKeyDemo extends StatefulWidget {
  const GlobalKeyDemo({super.key});

  @override
  State<GlobalKeyDemo> createState() => _GlobalKeyDemoState();
}

class _GlobalKeyDemoState extends State<GlobalKeyDemo> {
  var globalKeyForForm=GlobalKey<FormState>();
  String formData="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GlobalKeyDemo"),
      ),
      body: Column(
        children: [
          Form(
            key: globalKeyForForm,
              autovalidateMode: AutovalidateMode.onUserInteraction,


              child:TextFormField(
                onChanged: (value) {
                  formData=value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Enter  PassCode")
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Enter PassCode";
                  }
                  return null;
                },
              )
          ),
          Center(
            child: MaterialButton(
              color: Colors.blueGrey,
              onPressed: () {
                setState(() {
                  if(globalKeyForForm.currentState?.validate()??false){
                    print(formData);


                  }
                });

              },child: Text("Submit",style: TextStyle(fontSize: 20),),
            ),
          )
        ],
      ),

    );
  }
}
