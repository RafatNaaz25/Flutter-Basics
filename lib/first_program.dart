// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyWidget1 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text('Hey Rafat!'),
        ),
        appBar: AppBar(title: const Text('Hello')),
      ),
    ));
  }
}
