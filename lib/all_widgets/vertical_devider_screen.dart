import 'package:flutter/material.dart';
class vertical_devider_screen extends StatefulWidget {
  const vertical_devider_screen({super.key});

  @override
  State<vertical_devider_screen> createState() => _vertical_devider_screenState();
}

class _vertical_devider_screenState extends State<vertical_devider_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('vertical_devider_screen'),
      ),
      body:  Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(
              flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(21)
                  ),
                )
            ),
            VerticalDivider(
              color: Colors.black,
              width: 20,
              thickness: 2,
              endIndent: 12,
              indent: 12,


            ),
            Expanded(
              flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(21)
                  ),
                )
            ),
            Container(color: Colors.black,height: 12,width: 12,),
            Divider(
              height: 18,
              color: Colors.red,
              indent: 12,
            thickness: 12,
              endIndent: 12,


            ),

          ],
        ),
      ),

    );
  }
}
