import 'package:flutter/material.dart';
class AnimatedListWidgetScreen extends StatefulWidget {
  const AnimatedListWidgetScreen({super.key});

  @override
  State<AnimatedListWidgetScreen> createState() => _AnimatedListWidgetScreenState();
}

class _AnimatedListWidgetScreenState extends State<AnimatedListWidgetScreen> {
  final item=[];
  final GlobalKey<AnimatedListState> globalKey=GlobalKey();
  void insertItem(){
    item.insert(0, "Item ${item.length+1}");
    globalKey.currentState!.insertItem(0,duration: Duration(seconds: 1));
  }
  void removeItem(int index){
    globalKey.currentState!.removeItem(
      duration: Duration(microseconds: 1000000),
      index,(_,anim){
        return SizeTransition(
          sizeFactor: anim,
          child: Card(
            margin: EdgeInsets.all(4),
            color: Colors.redAccent.shade100,
            child: ListTile(
              title: Text("Deleted",style: TextStyle(fontSize: 22),),
            ),
          ),

        );

    }

    );
    item.removeAt(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            insertItem();
          }, icon: Icon(Icons.add))
        ],
        title: Text("AnimatedList"),
      ),
      body: RefreshIndicator(
        onRefresh: () async{
          return insertItem();
        },
        child: Column(
          children: [
            Expanded(
                child:AnimatedList(
                  key: globalKey,
                  initialItemCount: 0,//Why We use initialItemcoun here?
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index, animation) {
                    return SizeTransition(
                      key: UniqueKey(),
                        sizeFactor: animation,
                      child: Card(
                        color: Colors.orangeAccent.shade100,
                        child: ListTile(
                          title: Text(item[index]),
                          leading: Icon(Icons.account_balance_outlined),
                          trailing: IconButton(
                            onPressed: () {
                              removeItem(index);
                            },
                            icon: Icon(Icons.delete),
                          ),

                        ),
                      ),
                    );
                  },
                )
            )
          ],
        ),
      ),

    );
  }
}
