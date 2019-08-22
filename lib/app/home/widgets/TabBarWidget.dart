import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black87,
      unselectedLabelColor: Colors.grey,
      tabs: [
        new Tab(icon: new Icon(Icons.info), text: "Tab 1"),
        new Tab(icon: new Icon(Icons.lightbulb_outline), text: "Tab 2"),
      ],
    );
  }
}
