import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/widgets/StaggeredGridViewWidget.dart';

class TableFragment extends StatefulWidget {
  @override
  TablesFragment createState() => TablesFragment();
}

class TablesFragment extends State<TableFragment> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  String formattedDate(dateTime) {
    var date = DateTime.parse(dateTime);
    return "${date.day}-${date.month}-${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Stack(children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new OutlineButton(
                child: const Text(
                  'Select Date',
                  style: TextStyle(color: Colors.indigo),
                ),
                color: Theme.of(context).accentColor,
                splashColor: Colors.blueGrey,
                onPressed: () {
                  _selectDate(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: new Text(
                formattedDate(selectedDate.toString()),
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: new OutlineButton(
                child: const Text(
                  'Select Time',
                  style: TextStyle(color: Colors.red),
                ),
                color: Theme.of(context).accentColor,
                splashColor: Colors.blueGrey,
                onPressed: () {
                  _selectDate(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Icon(Icons.search, color: Color(0xffE78B3A)),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Center(child: Container(child: new StaggeredGridViewWidget())),
        )
      ]),
    ));
  }
}
