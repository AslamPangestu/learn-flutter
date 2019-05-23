import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful Example",
    home: FavouriteCity(),
  ));
}

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity> {
  String nameCity = "";
  var _currencies = ['Rupees', 'Rupiah', 'Dollar'];
  var _currenciesDefault = "Rupees";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example State"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropdownItem) {
                return DropdownMenuItem<String>(
                  value: dropdownItem,
                  child: Text(dropdownItem),
                );
              }).toList(),
              onChanged: (String selectedItem) {
                _onDropDownItemSelected(selectedItem);
              },
              value: _currenciesDefault == "" ? null : _currenciesDefault,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your next city is $nameCity",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currenciesDefault = newValueSelected;
    });
  }
}
