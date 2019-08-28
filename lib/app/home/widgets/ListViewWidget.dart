import 'package:flutter/material.dart';

List<String> _listViewData = [
  "Notifications",
  "Personal Info",
  "Location",
  "Language",
  "Logout",
];

List<Icon> _iconsList = [
  Icon(Icons.notifications),
  Icon(Icons.supervised_user_circle),
  Icon(Icons.location_on),
  Icon(Icons.language),
  Icon(Icons.subdirectory_arrow_left),
];

class ListViewWidget extends StatelessWidget {
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
                    _iconsList[index],
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(_listViewData[index],
                          style: TextStyle(
                              color: Color(0xff003366),
                              fontWeight: FontWeight.w500)),
                    ),
                    new Spacer(),
                    Icon(Icons.arrow_forward),
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
