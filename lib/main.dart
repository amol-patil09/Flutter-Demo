import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI Widgets",
    home: FavoriteCity()));

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";
  var _currencies = ['Rupees', 'Pounds', 'Dollars', 'Others'];
  var _currentItemSelected = 'Dollars';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(("Stateful Widget"))),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter City name",
                labelText: "City name",
              ),
              onChanged: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),

              onChanged: (String? newValueSelected) {
                return _onDropDownItemSelected(newValueSelected!);
              },

              value: _currentItemSelected,

              hint: Text("Please select",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0
              ),),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text("Your city is $nameCity",
                    style: TextStyle(fontSize: 20.0))),
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
