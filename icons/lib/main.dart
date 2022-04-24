import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Icons in Flutter",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Icons in Flutter"),
          ),
          body: Center(
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.done,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Icon(
                          Icons.camera_front,
                          color: Colors.black,
                          size: 40,
                        ),
                        Icon(Icons.vibration_outlined,
                            color: Colors.grey, size: 40),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.adb_outlined,
                          color: Colors.green,
                          size: 40,
                        ),
                        Icon(
                          Icons.account_box_rounded,
                          color: Colors.red,
                          size: 40,
                        ),
                        Icon(Icons.add_a_photo_outlined,
                            color: Colors.purple, size: 40),
                      ],
                    ),
                  ],
                )),
          )),
    );
  }
}
