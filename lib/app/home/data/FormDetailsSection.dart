import 'package:flutter/material.dart';

class FormDetailsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      new ListTile(
        leading: const Icon(Icons.person),
        title: new TextFormField(
          decoration: new InputDecoration(
            hintText: "Name",
          ),
        ),
      ),
      new ListTile(
        leading: const Icon(Icons.phone),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "Phone",
          ),
        ),
      ),
      new ListTile(
        leading: const Icon(Icons.label),
        title: const Text('Nick'),
        subtitle: const Text('None'),
      ),
      new ListTile(
        leading: const Icon(Icons.today),
        title: const Text('Birthday'),
        subtitle: const Text('February 20, 1980'),
      ),
      new ListTile(
        leading: const Icon(Icons.group),
        title: const Text('Contact group'),
        subtitle: const Text('Not specified'),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: OutlineButton.icon(
                  onPressed: () {},
                  color: Colors.black,
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                  label: Text('Save'))),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Center(
                child: OutlineButton.icon(
                    onPressed: () {},
                    color: Colors.black,
                    icon: Icon(
                      Icons.check_circle,
                      color: Colors.redAccent,
                    ),
                    label: Text('Cancel'))),
          ),
        ],
      )
    ]));
  }
}
