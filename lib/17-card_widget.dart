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
        backgroundColor: Colors.green,
        body: ListView(
          children: [
            buildCard(Icons.account_box, 'Account Box'),
            buildCard(Icons.bug_report, 'Bug Android'),
          ],
        ),
      ),
    );
  }

  // fungsi card
  Card buildCard(IconData iconData, String text) {
    return Card(
      child: Row(
        children: [
          // Icon
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(iconData, color: Colors.green)),

          // Text
          Text(text)
        ],
      ),
    );
  }
}
