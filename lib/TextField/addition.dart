// ignore_for_file: file_names, use_key_in_widget_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';

class MyWidget11 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget11> {
  int x = 0;
  int y = 0;
  int z = 0;
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
                      labelText: 'Enter Number 1',
                      border: OutlineInputBorder()))),
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  controller: myController2,
                  decoration: const InputDecoration(
                      labelText: 'Enter Number 2',
                      border: OutlineInputBorder()))),
          Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      x=int.parse(myController1.text);
                      y=int.parse(myController2.text);
                      z=x+y;
                    });
                  },
                  child: const Text('Click Here!'))),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('Addition is $z'),
          )
        ],
      ),
      appBar: AppBar(title: const Text('TextField')),
    )));
  }
}
