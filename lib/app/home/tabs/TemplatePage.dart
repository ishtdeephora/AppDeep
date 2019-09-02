import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/tabs/CustomerInfo.dart';
import 'package:flutter_try/app/home/widgets/AppBarWidget.dart';
import 'package:provider/provider.dart';

class TemplatePage extends StatelessWidget {
  TemplatePage(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
          child: AppBarWidget(),
          preferredSize: new Size(MediaQuery.of(context).size.width, 150.0)),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[HeadingWidget(), HeadingContent()],
        ),
      ),
      floatingActionButton: FloatingWidget(),
    );
  }
}

class HeadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CustomerInfo>(
      builder: (context, dataProvider, _) => Text(
        dataProvider.name ?? "",
        style: Theme.of(context).textTheme.headline,
      ),
    );
  }
}

class HeadingContent extends StatelessWidget {
  String listenHeadingChange(CustomerInfo info) {
    return info.name == "Ishtdeep" ? "Singh Hora" : "Kaur Saluja";
  }

  @override
  Widget build(BuildContext context) {
    var surnameChangeListener = Provider.of<CustomerInfo>(context);

    return new Text(
      listenHeadingChange(surnameChangeListener),
    );
  }
}

class FloatingWidget extends StatelessWidget {
  Color changeWidgetColor(CustomerInfo info) {
    return info.name == "Ishtdeep" ? Colors.blue : Colors.red;
  }

  const FloatingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titleChange = Provider.of<CustomerInfo>(context);

    return FloatingActionButton(
      onPressed: () {
        final String headingTitle =
            titleChange.name == "Ishtdeep" ? "Arshi" : "Ishtdeep";
        titleChange.name = headingTitle;
      },
      tooltip: 'Main navigation',
      child: Icon(Icons.edit, color: Colors.white),
      backgroundColor: changeWidgetColor(titleChange),
    );
  }
}
