// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';

class MyWidget17 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget17> {
  DateTime? d1 = DateTime.now();
  TimeOfDay t1 =
      TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute);
  TimeOfDay? t2;
  String? msg = "";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Date And Time")),
      body: Column(
        children: [
          Builder(builder: (context1) {
            return (ElevatedButton(
              onPressed: () {
                showTimePicker(context: context1, initialTime: t1)
                    .then((value) {
                  setState(() {
                    t2 = value;
                    msg = t2?.format(context1);
                  });
                });
              },
              child: const Text('Select Time'),
            ));
          }),
          Builder(builder: (context) {
            return (ElevatedButton(
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2025)).then((value){
                        setState(() {
                          d1 = value;
                        });
                      });
                },
                child: const Text('Select Date')));
          }),
          Text('Selected Date is $d1'),
          Text('Selected Time is $msg')
        ],
      ),
    )));
  }
}
