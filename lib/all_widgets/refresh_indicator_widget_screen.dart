import 'package:flutter/material.dart';
class RefreshIndicatorWidgetScreen extends StatefulWidget {
  const RefreshIndicatorWidgetScreen({super.key});

  @override
  State<RefreshIndicatorWidgetScreen> createState() => _RefreshIndicatorWidgetScreenState();
}

class _RefreshIndicatorWidgetScreenState extends State<RefreshIndicatorWidgetScreen> {
  List itemForList=["Item 1","Item 2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RefreshIndicatorWidgetScreen"),

      ),
      body: RefreshIndicator(
        color: Colors.white,
        strokeWidth: 3,

        backgroundColor: Colors.blueGrey,
        child: ListView.builder(
          itemCount: itemForList.length,
          itemBuilder: (context, index) {
          return Column(
            children: [
              Divider(height: 2,color: Colors.white,),
              ListTile(
                title: Text("${itemForList[index]}"),
                leading: Icon(Icons.account_balance_outlined),
                trailing: Icon(Icons.call),
                subtitle: Text("Never Give Up"),

              ),
            ],
          );
        },),
        onRefresh: ()async {
          await Future.delayed(Duration(seconds: 1));
          int nextItem=itemForList.length+1;
          itemForList.add("Item $nextItem");
          setState(() {

          });

        },
      ),
    );
  }
}
