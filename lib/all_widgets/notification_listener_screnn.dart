import 'package:flutter/material.dart';
class NotificationListenerScreen extends StatefulWidget {
  const NotificationListenerScreen({super.key});

  @override
  State<NotificationListenerScreen> createState() => _NotificationListenerScreenState();
}

class _NotificationListenerScreenState extends State<NotificationListenerScreen> {
  String message="New";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NotificationListenerScreen"),

      ),
      body: Column(
        children: [
          Container(
            height: 45,
            width: double.infinity,
            color: Colors.blueGrey.shade400,
            child: Center(
                child: Text(message,style: TextStyle(fontSize: 22),)
            ),
          ),
          Expanded(
              child:NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if(notification is ScrollStartNotification){
                    setState(() {
                      message="Scroll Stare";
                    });
                  }else if(notification is ScrollEndNotification){
                    setState(() {
                      message="Scroll End";
                    });
                  }else if(notification is ScrollUpdateNotification){
                    setState(() {
                      message="Scroll Update";
                    });
                  }
                  return true;
                },
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.access_alarm_outlined),
                    title: Text("Item ${index+1}"),
                  );
                },),
              )
          )
        ],
      ),
    );
  }
}
