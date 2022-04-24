import 'package:flutter/material.dart';
import 'package:layouts/pages/layouts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layouts",
      home: Layouts(),
    );
  }
}
