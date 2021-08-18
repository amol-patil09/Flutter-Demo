import 'package:flutter/material.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App Screen"),),
        body: Material(
          color: Colors.lightBlueAccent,
          child: Center(
            child: Text(
              "Hello Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.black, fontSize: 40.0),
            ),
          ),
        ),
      ),
    );
  }
}
