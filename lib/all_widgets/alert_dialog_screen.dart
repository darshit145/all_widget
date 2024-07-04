import 'package:flutter/material.dart';

class alert_dialog_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return  Scaffold(
      appBar: AppBar(
        title: Text("alert_dialog_screen"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlertDialog(context);
            }, child: Text("AlertDialog"))
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {



  //Create AlertDialog
  AlertDialog alerit = AlertDialog(
    title: Text("Simple Alert"),
    content:TextField(
      keyboardType: TextInputType.number,
    ),
    actions: [
      ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  ),
      ElevatedButton(onPressed: (){
        print("ok");
        _asyncSimpleDialog(context);
      }, child: Text("Submit"))
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerit;
    },
  );
}
// enum Product { Apple, Samsung, Oppo, Redmi }
   _asyncSimpleDialog(BuildContext context)   {
  return   showDialog (
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select Product '),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context,  'Apple');
              },
              child: const Text('Apple'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Samsung');
              },
              child: const Text('Samsung'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Oppo');
              },
              child: const Text('Oppo'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Redmi');
              },
              child: const Text('Redmi'),
            ),
          ],
        );
      });
}