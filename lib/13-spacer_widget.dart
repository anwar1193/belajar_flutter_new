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
          title: Text('Spacer Widget'),
        ),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Spacer(
                flex: 4,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Spacer(),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
