import 'package:flutter/material.dart';
class toggle_button_screen extends StatefulWidget {
  const toggle_button_screen({super.key});

  @override
  State<toggle_button_screen> createState() => _toggle_button_screenState();
}

class _toggle_button_screenState extends State<toggle_button_screen> {
  List<bool> isSelected=[false,false,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("toggle_button_screen"),
      ),
      body: Center(
        child:ToggleButtons(
          color: Colors.red,
          selectedBorderColor: Colors.green,
          selectedColor: Colors.green,
          borderRadius:BorderRadius.circular(8),
          borderWidth:2,
          fillColor: Colors.red,
          hoverColor: Colors.green,

          children:[
            Icon(Icons.account_balance_outlined,color: Colors.black,),
            Icon(Icons.place_rounded,color: Colors.black,),
            Icon(Icons.home,color: Colors.black,),
          ],
          isSelected: isSelected,
          onPressed: (index) {
            setState(() {
              print('Button at index $index is disabled.');

              isSelected[index]=!isSelected[index];
            });
          },

        ),
      ),
    );
  }
}
