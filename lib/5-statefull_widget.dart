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
  int number = 0;

  // Fungsi untuk tambah angka
  void tambahAngka() {
    setState(() {
      number++;
    });
  }

  // Fungsi Reset Angka
  void resetAngka() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Statefull Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Tampilan Angka
              Text(
                number.toString(),
                style: TextStyle(fontSize: 12 + number.toDouble()),
              ),

              // Tombol Tambah Angka
              RaisedButton(
                child: Text('Tambah Bilangan'),
                onPressed: tambahAngka,
              ),

              // Tombol Reset Angka
              RaisedButton(
                child: Text('Reset'),
                onPressed: resetAngka,
              )
            ],
          ),
        ),
      ),
    );
  }
}
