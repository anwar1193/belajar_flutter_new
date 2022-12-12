import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Text"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 200,
                height: 100,
                child: Text(
                    "Hello World, Pada kesempatan ini saya sedang melatih kemampuan flutter saya",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)))),
      ),
    );
  }
}
