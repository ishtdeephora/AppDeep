import 'package:flutter/material.dart';

class FormDataCollection extends StatefulWidget {
  @override
  _FormDataCollectionState createState() => _FormDataCollectionState();
}

class _FormDataCollectionState extends State<FormDataCollection> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 16.0),
      child: ListView(children: <Widget>[
        new ListTile(
          title: new TextField(
            controller: nameController,
            decoration: new InputDecoration(
              icon: const Icon(Icons.person),
              border: OutlineInputBorder(),
              labelText: "Name",
            ),
          ),
        ),
        new ListTile(
          title: new TextField(
            controller: phoneController,
            decoration: new InputDecoration(
              prefixText: '+91- ',
              icon: const Icon(Icons.phone),
              labelText: "Phone",
            ),
            keyboardType: TextInputType.phone,
          ),
        ),
        new ListTile(
          leading: const Icon(Icons.label),
          title: Text(nameController.text.split(' ')[0]),
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
                child: RaisedButton.icon(
                    onPressed: () {
                      final snackBar = SnackBar(
                        content:
                            Text(nameController.text + phoneController.text),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );

                      // Find the Scaffold in the widget tree and use
                      // it to show a SnackBar.
                      Scaffold.of(context).showSnackBar(snackBar);
                    },
                    color: Colors.green,
                    icon: Icon(
                      Icons.check_circle,
                      color: Colors.white,
                    ),
                    label: Text('Save',
                        style: new TextStyle(color: Colors.white)))),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Center(
                  child: OutlineButton.icon(
                      onPressed: () {},
                      color: Colors.black,
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.redAccent,
                      ),
                      label: Text('Cancel'))),
            ),
          ],
        )
      ]),
    ));
  }
}
