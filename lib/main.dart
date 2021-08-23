import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI Widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long List"),
      ),
      body: getListView(),
    )));

List<String> getListElements() {
  var items = List<String>.generate(100, (index) => "Item ${index}");
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listview = ListView.builder(
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          Fluttertoast.showToast(
              msg: "${listItems[index]} was tapped",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.SNACKBAR);
        },
      );
    },
  );
  return listview;
}
