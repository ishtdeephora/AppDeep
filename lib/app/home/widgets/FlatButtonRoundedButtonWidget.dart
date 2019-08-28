import 'package:flutter/material.dart';

class FlatButtonRoundedButton extends StatelessWidget {
  const FlatButtonRoundedButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(16.0),
          side: BorderSide(color: Colors.red)),
      color: Colors.white,
      textColor: Colors.red,
      padding: EdgeInsets.all(8.0),
      onPressed: () {},
      child: Text(
        "Add to Cart".toUpperCase(),
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
  }
}
