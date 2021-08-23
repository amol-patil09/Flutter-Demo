import 'package:demo_app/app_screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI Widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),
      ),
      body: getListView(),
    )));

Widget getListView() {

  var listview = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful view!"),
        trailing: Icon(Icons.wb_cloudy),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.desktop_windows),
        title: Text("Windows"),
        onTap: (){
          debugPrint("Windows tapped");
        }
      ),
      Container(
          padding: EdgeInsets.all(20.0),
          child:Text("New line",style: TextStyle(fontSize: 15.0,color: Colors.black))
      )

    ],
  );
  return listview;
}
