import 'package:flutter/material.dart';

class FormDataCollection extends StatefulWidget {
  @override
  _FormDataCollectionState createState() => _FormDataCollectionState();
}

class _FormDataCollectionState extends State<FormDataCollection> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  bool _validate = false;

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
              errorText: _validate ? 'Value Can\'t Be Empty' : null,
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
              errorText: _validate ? '     Value Can\'t Be Empty' : null,
              labelText: "Phone",
            ),
            keyboardType: TextInputType.phone,
          ),
        ),
        new ListTile(
          title: new TextField(
            controller: dateController,
            decoration: new InputDecoration(
              icon: const Icon(Icons.today),
              errorText: _validate ? '     Value Can\'t Be Empty' : null,
              labelText: "DOB",
            ),
            keyboardType: TextInputType.datetime,
          ),
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
                setState(() {
                  FocusScope.of(context).requestFocus(new FocusNode());
                  nameController.text.isEmpty
                      ? _validate = true
                      : _validate = false;
                  phoneController.text.isEmpty
                      ? _validate = true
                      : _validate = false;
                });

                final snackBar = SnackBar(
                  content: Text(nameController.text + phoneController.text),
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
              label: Text('Save', style: new TextStyle(color: Colors.white)),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Center(
                  child: OutlineButton.icon(
                onPressed: () {
                  nameController.text = '';
                  phoneController.text = '';
                },
                color: Colors.black,
                icon: Icon(
                  Icons.autorenew,
                  color: Colors.redAccent,
                ),
                label: Text('Clear'),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
              )),
            ),
          ],
        )
      ]),
    ));
  }
}
