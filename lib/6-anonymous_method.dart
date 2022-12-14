import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String kata = 'Ini adalah text';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(kata),
              RaisedButton(
                child: Text('Silahkan klik'),
                onPressed: () {
                  setState(() {
                    kata = 'Tombol sudah di klik';
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
