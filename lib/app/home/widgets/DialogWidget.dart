import 'package:flutter/material.dart';

enum ConfirmAction { CANCEL, ACCEPT }

Future<ConfirmAction> asyncConfirmDialog(context,
        [dialogTitle = '',
        dialogDescription = '',
        dialogPositiveTitle = '',
        dialogNegativeTitle = '']) async =>
    showDialog<ConfirmAction>(
        context: context,
        barrierDismissible: false, // user must tap button for close dialog!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(dialogTitle),
            content: Text(dialogDescription),
            actions: <Widget>[
              FlatButton(
                child: Text(dialogNegativeTitle),
                onPressed: () {
                  Navigator.of(context).pop(ConfirmAction.CANCEL);
                },
              ),
              FlatButton(
                child: Text(dialogPositiveTitle),
                onPressed: () {
                  Navigator.of(context).pop(ConfirmAction.ACCEPT);
                },
              )
            ],
          );
        });
