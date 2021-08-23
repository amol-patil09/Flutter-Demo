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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Add one more item',
        onPressed: () {},
      ),
    )));

void showSnackBar(BuildContext context, String item) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text('You just tapped $item'),
    action: SnackBarAction(
      label: "Undo",
      onPressed: () {
        Fluttertoast.showToast(
            msg: "Undo ${item}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            textColor: Colors.white,
            backgroundColor: Colors.lightBlue);
      },
    ),
  ));
}

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
          /*Fluttertoast.showToast(
              msg: "${listItems[index]} was tapped",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.SNACKBAR,
              textColor: Colors.white,
              backgroundColor: Colors.lightBlue);*/
          showSnackBar(context, listItems[index]);
        },
      );
    },
  );
  return listview;
}
