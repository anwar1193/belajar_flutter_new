import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          color: Colors.lightGreenAccent,
          child: Container(
            margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.amber, Colors.blue]),
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}
