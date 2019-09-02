import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/data/TableDetailsFragment.dart';

enum ConfirmAction { CANCEL, ACCEPT }

class DialogWidget implements Actions {
  static Future<ConfirmAction> asyncConfirmDialog(context,
          [dialogTitle = '',
          dialogDescription = '',
          dialogPositiveTitle = '',
          dialogNegativeTitle = '']) async =>
      showDialog<ConfirmAction>(
          context: context,
          barrierDismissible: false, // user must tap button for close dialog!
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                dialogTitle,
                style: TextStyle(
                  color: Color(0xff003366),
                ),
              ),
              content: Text(dialogDescription),
              actions: <Widget>[
                FlatButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Text(dialogNegativeTitle),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(16.0),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.of(context).pop(ConfirmAction.CANCEL);
                  },
                ),
                FlatButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Text(dialogPositiveTitle),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(16.0),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            TableDetailsFragment(Colors.black),
                      ),
                    );
                  },
                )
              ],
            );
          });

  @override
  void negativeActions() {}

  @override
  void positiveActions() {}
}

//listener for positive and negative actions on the dialog button
class Actions {
  void positiveActions() {}

  void negativeActions() {}
}
