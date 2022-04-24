import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int fnum = 0;
  int snum = 0;
  double div = 0;
  String disp = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exception Handling",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exception Handling in Flutter"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text("Division"),
              TextField(
                decoration: new InputDecoration(
                    hintText: "Enter 1st number", labelText: "First Number"),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  fnum = int.parse(value);
                  setState(() {});
                },
              ),
              TextField(
                decoration: new InputDecoration(
                    hintText: "Enter 2nd number", labelText: "Second Number"),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  snum = int.parse(value);
                  setState(() {});
                },
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    div = fnum / snum;
                    if (div == double.infinity) {
                      disp = "Cannot divide by zero";
                      throw Exception("Can't divide by zero");
                    } else {
                      disp = div.toString();
                    }
                  });
                },
                child: Text("Divide"),
              ),
              Text(
                "$disp",
              )
            ],
          ),
        ),
      ),
    );
  }
}
