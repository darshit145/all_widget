import 'package:flutter/material.dart';
class DropDownWidgetScreen extends StatefulWidget {
  const DropDownWidgetScreen({super.key});

  @override
  State<DropDownWidgetScreen> createState() => _DropDownWidgetScreenState();
}

class _DropDownWidgetScreenState extends State<DropDownWidgetScreen> {
  @override
  void didUpdateWidget(covariant  oldWidget){
    super.didUpdateWidget(oldWidget);
    print("ok_____________");
  }
  String? dropDownValue=null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDownMenu"),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropDownValue,
          elevation: 10,
          isExpanded: false,
          disabledHint: Text("ok"),
          enableFeedback: true,
          hint: Icon(Icons.people),
          menuMaxHeight: 150,
         // isDense: true,

          borderRadius: BorderRadius.circular(23),
          dropdownColor: Colors.blueGrey,
          icon: Icon(Icons.menu),
          underline: Divider(height: 3,color: Colors.black,),
          onChanged: (value) {
            setState(() {
              dropDownValue=value!;
            });
          },
          items: const [
            DropdownMenuItem<String>(child: Text("Boy"),value: "Boy",),
            DropdownMenuItem<String>(child: Text("Girl"),value: "Girl",),
            DropdownMenuItem<String>(child: Text("one"),value: "one",)
          ],
        ),
      ),

    );
  }

}
