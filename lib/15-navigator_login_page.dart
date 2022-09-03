import 'package:belajar_flutter_new/15-navigator_main_page.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            child: Text('Login'),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
          ),
        ),
      ),
    );
  }
}
