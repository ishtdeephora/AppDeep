import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/tabs/HomePage.dart';
import 'package:flutter_try/app/home/tabs/profile/settings/LocationScreen.dart';

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
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              HomeFragment(title: 'BoozeBurps')));
                      break;
                    case 1:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              HomeFragment(title: 'BoozeBurps')));
                      break;
                    case 2:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LocationScreen()));
                      break;
                    case 3:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              HomeFragment(title: 'BoozeBurps')));
                      break;
                    case 4:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              HomeFragment(title: 'BoozeBurps')));
                      break;
                    default:
                      break;
                  }
                },
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
