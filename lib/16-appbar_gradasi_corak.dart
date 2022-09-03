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
          toolbarHeight: 80,
          leading: Icon(Icons.adb, color: Colors.white),
          title: Text(
            'AppBar Gradasi x Corak',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                image: DecorationImage(
                    image: AssetImage('images/pattern.png'),
                    fit: BoxFit.none,
                    repeat: ImageRepeat.repeat)),
          ),
        ),
        body: Text('Hello World'),
      ),
    );
  }
}
