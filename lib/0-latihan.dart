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
          title: Text('Aplikasi Text-Style'),
        ),
        body: Center(
            child: Text(
          'Munawar Ahmad',
          style: TextStyle(
              fontFamily: 'CrashLandingBB',
              fontSize: 40,
              fontStyle: FontStyle.italic,
              color: Colors.blue,
              decoration: TextDecoration.overline,
              decorationColor: Colors.amber,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy),
        )),
      ),
    );
  }
}
