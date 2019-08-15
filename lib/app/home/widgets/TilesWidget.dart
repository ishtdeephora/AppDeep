import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/data/TableDetailsFragment.dart';

class TilesWidget extends StatelessWidget {
  TilesWidget(
      this.backgroundColor, this.iconData, this.capacity, this.tableNumber);

  final Color backgroundColor;
  final IconData iconData;
  final int capacity;
  final int tableNumber;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
      child: new Card(
        color: backgroundColor,
        child: new InkWell(
          splashColor: Color(0xffE78B3A),
          onTap: () {
            /*final snackBar = SnackBar(
              content: Text('Table # $capacity'),
              action: SnackBarAction(
                label: 'Actions',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SplashScreen()));
                },
              ),
            );
            Scaffold.of(context).showSnackBar(snackBar);*/

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TableDetailsFragment(backgroundColor)));
          },
          child: new Center(
            child: Column(
              children: <Widget>[
                Center(
                  child: new Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new Icon(
                      iconData,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: new Text(
                    capacity.toString(),
                    style: new TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
