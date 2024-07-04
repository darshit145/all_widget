import 'package:flutter/material.dart';
// class DrageAbleWidgetScreen extends StatefulWidget {
//   const DrageAbleWidgetScreen({super.key});
//
//   @override
//   State<DrageAbleWidgetScreen> createState() => _DrageAbleWidgetScreenState();
// }
//
// class _DrageAbleWidgetScreenState extends State<DrageAbleWidgetScreen> {
//   Color coughColor=Colors.red;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("DrageAbleWidgetScreen"),
//       ),
//       body:const SizedBox(
//         width: double.infinity,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: [
//            DragTarget(builder: (context, candidateData, rejectedData) {
//              return Container()
//            },)
//          ],
//         ),
//       ) ,
//
//     );
//   }
// }
class DrageAbleWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Draggable(
      feedback: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Center(
          child: Text('Drag me'),
        ),
      ),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Center(
          child: Text('Drag me'),
        ),
      ),
      data: 'Hello',
      childWhenDragging: Container(
        width: 100,
        height: 100,
        color: Colors.grey,
        child: Center(
          child: Text('Drag me'),
        ),
      ),
    );
  }
}

class DragTargetWidget extends StatefulWidget {
  @override
  _DragTargetWidgetState createState() => _DragTargetWidgetState();
}

class _DragTargetWidgetState extends State<DragTargetWidget> {
  String? _dragData;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (BuildContext context, List<String?> candidateData, List<dynamic> rejectedData) {
        return Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Center(
            child: Text(_dragData ?? 'Drag here'),
          ),
        );
      },
      onWillAccept: (data) => true,
      onAccept: (data) {
        setState(() {
          _dragData = data! as String?;
        });
      },
      onLeave: (data) {
        // Do something when draggable item leaves the DragTarget
      },
    );
  }
}