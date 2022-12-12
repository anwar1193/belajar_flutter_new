import 'package:flutter/material.dart';
import '29-colorful_button2.dart';

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
          title: Text('Colorful Buttons'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
              ColorfulButton(Colors.amber, Colors.red, Icons.comment),
              ColorfulButton(Colors.green, Colors.purple, Icons.computer),
              ColorfulButton(Colors.blue, Colors.yellow, Icons.contact_phone)
            ],
          ),
        ),
      ),
    );
  }
}
