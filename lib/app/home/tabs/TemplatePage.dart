import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/widgets/AppBarWidget.dart';

class TemplatePage extends StatelessWidget {
  TemplatePage(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new PreferredSize(
          child: AppBarWidget(),
          preferredSize: new Size(MediaQuery.of(context).size.width, 150.0)),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              title,
              style: Theme.of(context).textTheme.headline,
            ),
          ],
        ),
      ),
    );
  }
}
