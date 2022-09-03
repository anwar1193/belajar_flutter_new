import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPageOpacity(),
    );
  }
}

class MainPageOpacity extends StatelessWidget {
  const MainPageOpacity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity - Custom Card',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: [
          Container(
            // Backgroun Utama (Merah Muda Gradient)
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            // Card Utama
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      // Card Stack 1 (Corak)
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://img.freepik.com/free-vector/abstract-organic-lines-background_1017-26669.jpg?w=2000"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      // Card Stack 2 (Gambar Sawah)
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.tmpo.co/data/2021/03/14/id_1007127/1007127_720.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      // Card Stack 2 (Tulisan-tulisan di bawah gambar)
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Beautiful Sunset at Paddy Field",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFFF56D5D), fontSize: 25),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Posted on ",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    "June 18, 2022",
                                    style: TextStyle(
                                        color: Color(0xFFF56D5D), fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Spacer(
                                  flex: 10,
                                ),
                                Icon(
                                  Icons.thumb_up,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "99",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                                Icon(
                                  Icons.comment,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "888",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(
                                  flex: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Flutter 23 -> 03:19