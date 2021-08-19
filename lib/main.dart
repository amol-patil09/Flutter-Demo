import 'package:demo_app/app_screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI Widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),
      ),
      body: Home(),
    )));
