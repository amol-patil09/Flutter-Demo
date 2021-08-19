import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Text(
          "Flight",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.black,
              fontSize: 50.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
