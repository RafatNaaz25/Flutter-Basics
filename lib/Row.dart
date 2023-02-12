// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyWidget4 extends StatelessWidget {
  const MyWidget4({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.max,
       textDirection: TextDirection.rtl,
        children: [
        Container(
            color: Colors.red,
            child: const Text('This is line1', style: TextStyle(fontSize: 30))),
        Container(
            color: Colors.green,
            child: const Text('This is line2', style: TextStyle(fontSize: 30))),
        Container(
            color: Colors.yellow,
            child: const Text('This is line3', style: TextStyle(fontSize: 30)))
      ]),
      appBar: AppBar(
        title: const Text('Row Demo'),
      ),
    )));
  }
}