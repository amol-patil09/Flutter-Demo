import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
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
            FlightImageAsset(),
            FlightBookButton()
          ],
        ),
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage, color: Colors.lightBlue);
    return Container(child: image);
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      margin: EdgeInsets.only(top: 10.0),
      child: MaterialButton(
        onPressed: () {
          BookFlight(context);
        },
        child: Text(
          "Book your Flight",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 20.0),
        ),
        color: Colors.lightBlue,
        elevation: 6.0,
      ),
    );
  }

  void BookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      title: Text(
        "Flight booked successfully",
        style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal),
      ),
      content: Text(
        "Have a pleasent flight",
        style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
