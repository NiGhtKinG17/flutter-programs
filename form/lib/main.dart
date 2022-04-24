import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Form",
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Form")),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Enter your name",
              labelText: "Name",
            ),
            validator: (value) {
              if (value != null && value.isEmpty) {
                return "Please enter name";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.date_range),
              hintText: "Enter your age",
              labelText: "Age",
            ),
            validator: (value) {
              if (value != null && value.isEmpty) {
                return "Please enter valid age";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: "Enter your DOB",
              labelText: "DOB",
            ),
            validator: (value) {
              if (value != null && value.isEmpty) {
                return "Please enter valid DOB";
              }
              return null;
            },
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 50.0),
              child: new ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Entering Data.')));
                  }
                },
              ))
        ],
      ),
    );
  }
}
