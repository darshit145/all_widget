import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
class table_calender_screen extends StatefulWidget {
  const table_calender_screen({super.key});

  @override
  State<table_calender_screen> createState() => _table_calender_screenState();
}

class _table_calender_screenState extends State<table_calender_screen> {
  DateTime today=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("table_calender_screen"),
      ),
      body:  Column(
        children: [
          TableCalendar(
                      focusedDay: today,
                      lastDay: DateTime(2030),
                      firstDay: DateTime(2010),
                      rowHeight: 100,
                      selectedDayPredicate: (day) {
                        return isSameDay(day, today);
                      },
                      headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true),
                      availableGestures: AvailableGestures.all,
            onDaySelected: ondayselect,
          
          
                    ),
          Text("Selected Date ${today.toString().split(" ")[0]}")
        ],
      ),

    );
  }
  void ondayselect(DateTime day,DateTime focuseDay){
    setState(() {
      print(day);
      today=day;
    });


  }
}
