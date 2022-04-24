import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Images in Flutter",
      home: Scaffold(
        appBar: AppBar(title: Text("Images in flutter")),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text("Image 1"),
                Image.asset(
                  "assets/images/pic1.jpg",
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 50),
                Text("Image 2"),
                Image.asset(
                  "assets/images/pic2.jpg",
                  fit: BoxFit.fill,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
