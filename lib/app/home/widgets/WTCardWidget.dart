import 'package:flutter/material.dart';

class WTCardWidget extends StatelessWidget {
  final Container holder;

  const WTCardWidget({
    Key key,
    this.holder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5.0,
        child: Container(
          width: double.infinity,
          height: 215.0,
          child: holder,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              gradient:
                  new LinearGradient(colors: [Colors.white, Color(0xfffff8e1)]),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                )
              ]),
        ));
  }
}
