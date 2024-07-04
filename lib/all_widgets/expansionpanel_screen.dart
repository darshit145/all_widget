import 'package:flutter/material.dart';

class ExpansionPanelScreen extends StatefulWidget {
  const ExpansionPanelScreen({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelScreen> createState() => _ExpansionPanelScreenState();
}

class _ExpansionPanelScreenState extends State<ExpansionPanelScreen> {
    List<Item> itemListFor=List.generate(4, (index) {
    return Item(contentOfPanel: "this os contsnt panel fro  Panel  View no:-${index+1}", headingOfPanel: "this is ${index+1}");

  });
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13)
        ),
        title: Text("ExpansionPanel"),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          children: itemListFor.map((e) {
            return ExpansionPanel(
              isExpanded: e.isTrue,
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    leading: Icon(Icons.access_alarm_outlined),
                    title: Text("${e.headingOfPanel}"),
                    subtitle: Text("haderBuilder "),
                  );
                },
                body: ListTile(
                  title: Text(" ${e.contentOfPanel} \nWe use body property here Listtile "),
                )
            );
          }).toList(),

          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              itemListFor[panelIndex].isTrue = !itemListFor[panelIndex].isTrue;

              // itemListFor[panelIndex].isTrue=inverterOfValue();
            });
          },
        ),
      ),
    );

  }

}
class  Item{
  String headingOfPanel;
  String contentOfPanel;
  bool isTrue;
  Item({required this.contentOfPanel,required this.headingOfPanel,this.isTrue=false});
}


//
//
// class ExpansionPanelScreen extends StatefulWidget {
//   @override
//   _ExpansionPanelScreenState createState() => _ExpansionPanelScreenState();
// }
//
// class _ExpansionPanelScreenState extends State<ExpansionPanelScreen> {
//   bool data=false;
//   List<Item> _data = List.generate(3, (index) {
//     return Item(
//       headerText: "Panel $index",
//       expandedText: "This is expanded text for panel $index",
//     );
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Expansion Panel Example'),
//       ),
//       body: SingleChildScrollView(
//         child: ExpansionPanelList(
//           expansionCallback: (int panelIndex, bool isExpanded) {
//             setState(() {
//               //print(deployed());
//               print(data);
//               print(_data[panelIndex].isExpanded);
//               _data[panelIndex].isExpanded = deployed();
//               print(data);
//             });
//           },
//           children: _data.map<ExpansionPanel>((Item item) {
//             return ExpansionPanel(
//               headerBuilder: (BuildContext context, bool isExpanded) {
//                 return ListTile(
//                   title: Text(item.headerText),
//                 );
//               },
//               body: ListTile(
//                 title: Text(item.expandedText),
//               ),
//               isExpanded: item.isExpanded,
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
//   deployed(){
//     return data=data?false:true;
//   }
// }
//
// class Item {
//   final String headerText;
//   final String expandedText;
//   bool isExpanded;
//
//   Item({
//     required this.headerText,
//     required this.expandedText,
//     this.isExpanded = false,
//   });
// }