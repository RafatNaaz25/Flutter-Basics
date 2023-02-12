import 'package:flutter/material.dart';

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: const Center(
            child: Text('Finally!',style:TextStyle(fontSize: 40,color:Colors.green)),
          ),
          appBar: AppBar(title: const Text('This is Title!'))),
    ));
  }
}
