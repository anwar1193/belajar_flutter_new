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
          title: Text('Text Style'),
        ),
        body: Center(
            child: Text(
          'Aplikasi Keren Dong',
          style: TextStyle(
              fontFamily: 'CrashLandingBB',
              fontSize: 50,
              decoration: TextDecoration.overline,
              decorationColor: Colors.red,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy),
        )),
      ),
    );
  }
}
