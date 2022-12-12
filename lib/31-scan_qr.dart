import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = 'Hasil QR Scan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QR Scan"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                  child: Text("Scan"),
                  onPressed: () async {
                    text = await scanner.scan();
                    setState(() {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
