import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Location Settings"),
          backgroundColor: Colors.black,
          actions: <Widget>[
            new IconButton(
                icon: const Icon(Icons.cancel),
                onPressed: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                  Navigator.pop(context);
                })
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 24.0),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Location Title",
                      style: new TextStyle(
                          color: Color(0xff003366),
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis odio et',
                          style: new TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Container(
                          decoration: new BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              //                   <--- left side
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          )),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Location permission',
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                    });
                                  },
                                  activeTrackColor: Colors.blueAccent,
                                  activeColor: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
