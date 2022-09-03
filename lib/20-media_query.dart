import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPageMediaQuery(), // panggil MainPageMediaQuery
    );
  }
}

// Class Ini sebaiknya dibuat di halaman yang berbeda
class MainPageMediaQuery extends StatelessWidget {
  const MainPageMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Media Query')),
          body: (MediaQuery.of(context).orientation == Orientation.portrait)
              ? Column(
                  // Jika Portrait maka dia akan Column (disusun ke bawah)
                  children: generateContainers(),
                )
              : Row(
                  // Jika Landscape maka dia akan Row (Disusun ke samping)
                  children: generateContainers(),
                )),
    );
  }
}

// Pisahkan fungsi container
List<Widget> generateContainers() {
  return <Widget>[
    Container(
      color: Colors.red,
      width: 100,
      height: 100,
    ),
    Container(
      color: Colors.green,
      width: 100,
      height: 100,
    ),
    Container(
      color: Colors.blue,
      width: 100,
      height: 100,
    ),
  ];
}
