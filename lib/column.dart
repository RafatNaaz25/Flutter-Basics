import 'package:flutter/material.dart';

class MyWidget5 extends StatelessWidget {
  const MyWidget5({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        verticalDirection: VerticalDirection.down,
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
        title: const Text('Column Demo'),
      ),
    )));
  }
}
