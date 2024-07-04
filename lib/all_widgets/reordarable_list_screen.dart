import 'package:flutter/material.dart';
class ReordarAbleListWidgetScreen extends StatefulWidget {
  const ReordarAbleListWidgetScreen({super.key});

  @override
  State<ReordarAbleListWidgetScreen> createState() => _ReordarAbleListWidgetScreenState();
}

class _ReordarAbleListWidgetScreenState extends State<ReordarAbleListWidgetScreen> {
  final List<int> item=List<int>.generate(22, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReordarAbleListWidgetScreen"),
      ),
      body: ReorderableListView(
        header: Text("This is reordarable List header",style: TextStyle(fontSize: 15) ,),
        footer: Text("This is reordarable List footer",style: TextStyle(fontSize: 15) ,),
        padding: EdgeInsets.all(9),
        itemExtent: 60,
        buildDefaultDragHandles: true,

        onReorder: (oldIndex, newIndex) {
          setState(() {
            if(oldIndex<newIndex){
              newIndex -=1;
            }
            final int items=item.removeAt(oldIndex);
            item.insert(newIndex, items);

          });

        },
        children: List.generate(

        item.length,
                (index) {
          return ListTile(
            tileColor: item[index].isEven?Colors.white:Colors.blueGrey.shade200,
            key: Key("$index"),
            title: Text("Item ${item[index]}"),
            trailing: Icon(Icons.drag_handle_sharp),
            leading: Icon(Icons.mail),
            subtitle: Text("Reordarable List"),
            enabled: true,
            isThreeLine: true,
          );
                } ),
      )

    );
  }
}
