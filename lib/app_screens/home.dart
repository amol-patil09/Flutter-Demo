import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10,top: 20),
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Spice Jet",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Mumbai to Banglore via New Delhi",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Air India",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Jalgaon to Pune via Mumbai",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
