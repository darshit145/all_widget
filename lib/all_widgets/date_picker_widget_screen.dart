import 'package:flutter/material.dart';

class DatePickerWidgetScreen extends StatefulWidget {
  const DatePickerWidgetScreen({super.key});

  @override
  State<DatePickerWidgetScreen> createState() => _DatePickerWidgetScreenState();
}

class _DatePickerWidgetScreenState extends State<DatePickerWidgetScreen> {
  DateTime dataStore=DateTime(2001);
  TimeOfDay timeStore=TimeOfDay(hour: 1, minute: 00);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker\nTimePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text("showDatePicker"),
              onPressed: ()async {
                DateTime? dataPicked=await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),


                    firstDate: DateTime(2004),
                    lastDate: DateTime(2030)
                );
                if(dataPicked!=null){
                  setState(() {
                    dataStore=dataPicked!;
                  });
                }

              },
            ),
          ),
          Center(
            child: Text("${dataStore.day}:${dataStore.month}:${dataStore.year}",style: TextStyle(fontSize: 43,color: Colors.black),),
          ),
          Center(
            child: ElevatedButton(
              child: Text("timePicker"),
              onPressed: ()async {
                TimeOfDay? timePicker=await showTimePicker(context: context,initialTime: TimeOfDay.now());
                if(timePicker!=null){
                  setState(() {
                    timeStore=timePicker;

                  });
                }
              },
            ),
          ),
          Center(
            child: Text("${timeStore.hour}:${timeStore.minute}",style: TextStyle(fontSize: 43,color: Colors.black),),
          ),
        ],
      ),

    );
  }
}
