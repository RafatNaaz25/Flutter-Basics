// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyWidget18 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget18> {
  String? msg = "";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Alert Dialog Demo'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return (Padding(padding: const EdgeInsets.all(20),child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return (AlertDialog(
                                title: const Text('Do you want to exit?'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          msg = "Yes";
                                          SystemNavigator.pop();
                                        });
                                      },
                                      child: const Text("Yes")),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          msg = "No";
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: const Text('No'))
                                ],
                              ));
                            });
                      },
                      child: const Text('Exit',style: TextStyle(fontSize: 20),)),));
                }),
                Text('You selected $msg',style: const TextStyle(fontSize: 20,color: Colors.red),),
              ],
            ),
          )),
    ));
  }
}
