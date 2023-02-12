// ignore_for_file: file_names, use_key_in_widget_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';

class MyWidget10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget10> {
  var fname = "";
  var lname = "";
  var myController1 = TextEditingController();
  var myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  controller: myController1,
                  decoration: const InputDecoration(
                      labelText: 'Enter First Name',
                      border: OutlineInputBorder()))),
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  controller: myController2,
                  decoration: const InputDecoration(
                      labelText: 'Enter Last name',
                      border: OutlineInputBorder()))),
          Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      fname = myController1.text;
                      lname = myController2.text;
                    });
                  },
                  child: const Text('Click Here!'))),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('Hello $fname $lname'),
          )
        ],
      ),
      appBar: AppBar(title: const Text('Addition')),
    )));
  }
}
