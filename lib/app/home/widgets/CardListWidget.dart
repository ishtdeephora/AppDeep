import 'package:flutter/material.dart';

List<String> _listViewData = [
  "Notifications",
  "Personal Info",
  "Location",
  "Language",
  "Logout",
  "Notifications",
  "Personal Info",
  "Location",
  "Language",
  "Logout",
];

class CardListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _listViewData.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: ListTile(
                onTap: () {},
                title: Row(
                  children: <Widget>[
                    Text(_listViewData[index]),
                  ],
                ),
              ),
            ),
            Divider(
              height: 8.0,
              color: Colors.blueGrey,
            ),
            //                           <-- Divider
          ],
        );
      },
    );
  }
}
