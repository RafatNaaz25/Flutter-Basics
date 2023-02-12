// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(shape: BoxShape.rectangle, color: Colors.red),
        ),
        appBar: AppBar(
          title:const  Text('Box Decoration'),
        ),
      ),
    ));
  }
}
