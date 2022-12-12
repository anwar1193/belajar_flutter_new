import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                    //decoration pada textField
                    fillColor:
                        Colors.lightBlue[50], // warna background textinput
                    filled: true, // mengaktifkan fillColor
                    icon: Icon(Icons.adb), // Icon di luar textField
                    prefixIcon: Icon(Icons
                        .person), // Icon di dalam textField (di depan, kalo di belakang pakai suffix)
                    prefixText: "Name : ", // Text di dalam textField
                    prefixStyle: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight
                            .w600), // style untuk prefixText / prefixIcon
                    labelText: "Nama Lengkap", // Text di luar textField
                    labelStyle:
                        TextStyle(color: Colors.red), // style untuk labelText
                    hintText: "Nama Lengkapnya Bos", // placeholder / klue isian
                    hintStyle: TextStyle(fontSize: 12), // style pada hintText
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            20)) // tipe border pada textField
                    ),
                // obscureText: true, // untuk format password
                maxLength: 10, // maksimal panjang karakter yang bisa diinput

                onChanged: (nilai) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
