import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return new PreferredSize(
      child: new Container(
        padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: new Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
          child: Row(
            children: <Widget>[
              new Text(
                'BoozeBurps',
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Icon(Icons.local_drink, color: Colors.white),
              ),
            ],
          ),
        ),
        decoration: new BoxDecoration(
            gradient:
                new LinearGradient(colors: [Colors.black, Color(0xffE78B3A)]),
            boxShadow: [
              new BoxShadow(
                color: Colors.grey[500],
                blurRadius: 20.0,
                spreadRadius: 1.0,
              )
            ]),
      ),
      preferredSize: new Size(MediaQuery.of(context).size.width, 150.0),
    );
  }
}
