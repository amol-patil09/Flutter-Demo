import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.lightBlueAccent,
        child: Text("Flight", textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.black, fontSize: 20),),
      ),
    );
  }
}
