import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/tabs/SampleClass.dart';
import 'package:flutter_try/app/home/widgets/AppBarWidget.dart';
import 'package:provider/provider.dart';

class TemplatePage extends StatelessWidget {
  TemplatePage(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        builder: (context) => DataProvider(),
        child: Scaffold(
          appBar: new PreferredSize(
              child: AppBarWidget(),
              preferredSize:
                  new Size(MediaQuery.of(context).size.width, 150.0)),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[HeadingWidget(), HeadingContent()],
            ),
          ),
          floatingActionButton: FloatingWidget(),
        ));
  }
}

class HeadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Text(
      "Ishtdeep",
      style: Theme.of(context).textTheme.headline,
    );
  }
}

class HeadingContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Text(
      "Singh Hora",
    );
  }
}

class FloatingWidget extends StatelessWidget {
  const FloatingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Main navigation',
      child: Icon(Icons.edit, color: Colors.white),
      backgroundColor: Colors.black,
    );
  }
}
