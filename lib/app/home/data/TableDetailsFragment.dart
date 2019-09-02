import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/data/FormDetailsSection.dart';

class TableDetailsFragment extends StatefulWidget {
  TableDetailsFragment(this.appBarBackGroundColor);

  final Color appBarBackGroundColor;

  @override
  _TableDetailsFragment createState() =>
      _TableDetailsFragment(appBarBackGroundColor);
}

class _TableDetailsFragment extends State<TableDetailsFragment> {
  _TableDetailsFragment(this.appBarBackGroundColor);

  final Color appBarBackGroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selected table details"),
        backgroundColor: appBarBackGroundColor,
        actions: <Widget>[
          new IconButton(
              icon: const Icon(Icons.cancel),
              onPressed: () {
                FocusScope.of(context).requestFocus(new FocusNode());
                Navigator.pop(context);
              })
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: new FormDataCollection(),
      ),
    );
  }
}
