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
        appBar: AppBar(title: Text('InkWell - Custom Button')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Tombol Biasa (Raised Button)
              RaisedButton(
                color: Colors.amber,
                child: Text('Raised Button'),
                shape: StadiumBorder(), // supaya tumpul
                onPressed: () {},
              ),

              // Tombol Custom
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3, // untuk bayangan agar tombol lebih tegak
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Colors.purple, Colors.pink],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.amber, // warna saat tombol di tekan
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Custom Button',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
