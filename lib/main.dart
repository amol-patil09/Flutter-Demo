import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple Interest Calculator",
    home: SIForm()));

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  var _currencies = ['Rupees', 'Pounds', 'Dollars', 'Others'];
  var _currentItemSelected = 'Rupees';
  var _minimumMargin = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(("Simple App Calculator"))),
      body: Container(
        margin: EdgeInsets.all(_minimumMargin * 2),
        child: ListView(
          children: [
            getImageAsset(),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumMargin, bottom: _minimumMargin),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Principal",
                      hintText: "Enter Principal e.g.12000",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumMargin, bottom: _minimumMargin),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Rate of Interest",
                      hintText: "Enter Rate of Interest",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
              padding:
                  EdgeInsets.only(top: _minimumMargin, bottom: _minimumMargin),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Term",
                          hintText: "Term",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Container(width: _minimumMargin * 5),
                  Expanded(
                    child: DropdownButton<String>(
                      items: _currencies.map((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                      value: _currentItemSelected,
                      onChanged: (String? newValueSelected) {
                        _onDropDownItemSelected(newValueSelected!);
                      },
                    ),
                  )
                ], // Row Children
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: _minimumMargin, bottom: _minimumMargin),
              child: Row(
                children: [
                  Expanded(
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)),
                      elevation: 10.0,
                      color: Colors.lightBlue,
                      child: MaterialButton(
                        height: 35.0,
                        onPressed: () {},
                        child: Text(
                          "Calculate",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: _minimumMargin * 5.0,
                  ),
                  Expanded(
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)),
                      elevation: 10.0,
                      color: Colors.lightBlue,
                      child: MaterialButton(
                        height: 35.0,
                        onPressed: () {},
                        child: Text(
                          "Reset",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ], // Column Children
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0);
    return Container(
        child: image,
        margin: EdgeInsets.only(top: _minimumMargin * 5),
        alignment: Alignment.center);
  }
}
