import 'dart:ui';

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
          title: Text("Flutter Typography"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Contoh 01 (Tanpa Apapun)",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Contoh 02 (Small Caps)",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable("smcp")]),
              ),
              Text(
                "Contoh 1/2 (Small Caps & Frac)",
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable("smcp"),
                  FontFeature.enable('frac')
                ]),
              ),
              Text(
                "Contoh 19 (Tanpa Apapun)",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Contoh 19 (Old Style)",
                style: TextStyle(
                    fontSize: 20,
                    fontFeatures: [FontFeature.oldstyleFigures()]),
              ),
              Text(
                "Contoh 20 (Default)",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "Contoh 20 (Style Set Nomor 5)",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.stylisticSet(5)]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
