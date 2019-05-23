import 'package:flutter/material.dart'; //widget material design

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          // width: 200.0,
          // height: 100.0,
          // margin: EdgeInsets.only(left:20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Thi is",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "My First Flutter Home Screen",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Thi is",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "My First Flutter Home Screen",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic
                      ),
                    ),
                  )
                ],
              ),
              AndroidImage(),
              ActionButton()
            ],
          )),
    );
  }
}

class AndroidImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/android.png');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    return Container(child: image);
  }
}

class ActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 200.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          "Booking",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        elevation: 6.0,
        onPressed: () => booking(context),
      ),
    );
  }

  void booking(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Booking done"),
      content: Text("Bye2"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
