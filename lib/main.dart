// import 'package:first_app/screens/home.dart';
import 'package:flutter/material.dart'; //widget material design

//main function
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UI Widget",
      // home: Home(),
      home: Scaffold(
        appBar: AppBar(title: Text("Test Long List View")),
        // appBar: AppBar(title: Text("Test List View")),
        // body: getListView(),
        body: getLongListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('FAB Click');
          },
          child: Icon(Icons.add),
          tooltip: 'Add more item',
        ),
      )));
}

List<String> getListElements() {
  var items = List<String>.generate(20, (counter) => "Item $counter");
  return items;
}

void showSnackbar(BuildContext context, String item) {
  var snackbar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
      onPressed: () {
        debugPrint('Undo ');
      },
      label: "Undo",
    ),
  );
  Scaffold.of(context).showSnackBar(snackbar);
}

Widget getLongListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
    itemCount: listItems.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listItems[index]),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          showSnackbar(context, listItems[index]);
        },
      );
    },
  );
  return listView;
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Great View"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape tap");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
      Text("Another element"),
      Container(color: Colors.red, height: 50.0)
    ],
  );
  return listView;
}
