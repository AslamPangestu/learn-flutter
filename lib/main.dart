import 'package:first_app/screens/first_screen.dart';
import 'package:flutter/material.dart'; //widget material design

//main function
void main() => runApp(MyFlutterApp());

//class without state
class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "New App",
        home: Scaffold(
          appBar: AppBar(
            title: Text("New App Title"),
          ),
          body: FirstScreen()
        ));
  }
}
