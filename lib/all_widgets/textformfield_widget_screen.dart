import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Form_Widget_Screen extends StatefulWidget {
  @override
  State createState() => Form_Widget_Screen_value();
}

class Form_Widget_Screen_value extends State<Form_Widget_Screen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form_Widget_Screen"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child:Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    validator: (values) {
                      if (values!.isEmpty) {
                        return "Please Enter a Value";
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your full name',
                    labelText: 'Name',
                  ),
                  validator: (val){
                    if(val!.isEmpty){
                      return "Please Enter a Mail";
                    }
                    return null;
                  },
                ),
                const SizedBox(

                  height: 16,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter your date of birth',
                    labelText: 'Dob',
                  ),
                  validator: (val){
                    if(val!.isEmpty){
                      return "Please Enter a Password";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 60,
                    width: double.infinity,
                    //padding: const EdgeInsets.only(left: 15.0, top: 40.0),
                    child:  ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: () {
                        if (_formKey.currentState?.validate()??false) {
                           ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text('Data is in processing.',),backgroundColor: Colors.grey,)
                         );

                          // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Data is in processing.')));
                        }
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
