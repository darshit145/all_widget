import 'package:flutter/material.dart';
class table_screen extends StatefulWidget {
  const table_screen({super.key});

  @override
  State<table_screen> createState() => _table_screenState();
}

class _table_screenState extends State<table_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("table_screen"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Table(
            border: TableBorder.all(color: Colors.black,width: 2),
            children: [
              TableRow(
                  children: [
                    TableCell(child: Text("ok")),
                    TableCell(child: Text("ok")),
                    TableCell(child: Text("ok")),
                  ]
              ),
              TableRow(
                children: [
                  TableCell(child: Icon(Icons.account_balance_outlined)),
                  TableCell(child: Icon(Icons.account_balance_outlined)),
                  TableCell(child: Icon(Icons.account_balance_outlined)),
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
