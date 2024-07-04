import 'package:flutter/material.dart';

class DEmo2 extends StatefulWidget {
  // const DEmo2({Key? key}) : super(key: key);

  @override
  State<DEmo2> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<DEmo2> {
  List li=List.generate(12, (index) => index);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo2"),
      ),
      body: ReorderableListView(
         children: li.map((e) {
           return ListTile(
             key: ValueKey("$e"),
             title: Text("ok$e"),
           );
         }).toList(),
        onReorder: (oldIndex, newIndex) {
           setState(() {
             if(oldIndex<newIndex){
               newIndex--;
             }
             final int item=li.removeAt(oldIndex);
             li.insert(newIndex, item);

           });

        },
      ),
    );

  }



}
// class DemoClassOfrList extends StatefulWidget {
//   const DemoClassOfrList({super.key});
//
//   @override
//   State<DemoClassOfrList> createState() => _DemoClassOfrListState();
// }
//
// class _DemoClassOfrListState extends State<DemoClassOfrList> {
//   final List item=[];
//   final GlobalKey<AnimatedListState> globalKey=GlobalKey();
//   void addItem(){
//     item.insert(0, "Item ${item.length+1}");
//     globalKey.currentState!.insertItem(0,duration: Duration(seconds: 1));
//   }
//   void removeItem(int index){
//     item.removeAt(index);
//     globalKey.currentState!.removeItem(
//       duration: Duration(seconds: 1),
//         index, (context, animation) {
//       return SizeTransition(
//
//         sizeFactor: animation,
//         child: Card(
//           color: Colors.redAccent,
//           margin: EdgeInsets.all(4),
//           child: ListTile(),
//         ),
//       );
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ok"),
//         actions: [
//           IconButton(onPressed: addItem
//
//           , icon: Icon(Icons.add))
//         ],
//       ),
//       body: AnimatedList(
//         key: globalKey,
//
//         initialItemCount: 0,
//         padding: EdgeInsets.all(12),
//         itemBuilder: (context, index, animation) {
//         return SizeTransition(
//             sizeFactor: animation,
//
//           child: Card(
//             color: Colors.red,
//             child: ListTile(
//               leading: Icon(Icons.account_balance_outlined),
//             title: Text(item[index]),
//               trailing: IconButton(
//                 icon: Icon(Icons.delete),
//                 onPressed: () {
//                   removeItem(index);
//                 },
//               ),
//             ),
//           ),
//         );
//       },),
//     );
//   }
// }
