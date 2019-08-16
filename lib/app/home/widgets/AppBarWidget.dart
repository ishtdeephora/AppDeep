import 'package:flutter/material.dart';
import 'package:flutter_try/app/utils/constants.dart';

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
// This is the type used by the popup menu below.

// This menu button widget updates a _selection field (of type WhyFarther,
// not shown here).
              Padding(
                padding: const EdgeInsets.only(left: 176.0),
                child: PopupMenuButton<WhyFarther>(
                  onSelected: (WhyFarther result) {
                    setState(() {});
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<WhyFarther>>[
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.harder,
                      child: Text('Working a lot harder'),
                    ),
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.smarter,
                      child: Text('Being a lot smarter'),
                    ),
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.selfStarter,
                      child: Text('Being a self-starter'),
                    ),
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.tradingCharter,
                      child: Text('Placed in charge of trading charter'),
                    ),
                  ],
                ),
              )
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
