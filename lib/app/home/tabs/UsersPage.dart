import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsersScreen extends StatelessWidget {
  UsersScreen(this.title);

  final String title;

  List<String> _listViewData = [
    "Notifications",
    "Personal Info",
    "Location",
    "Language",
    "Logout",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 200.0,
                floating: false,
                elevation: 16.0,
                backgroundColor: Colors.black,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipOval(
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset('assets/ishtdeep.jpg',
                                fit: BoxFit.contain, height: 50)),
                        Container(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Ishtdeep Hora',
                              style: new TextStyle(fontSize: 18.0),
                            )),
                      ],
                    ),
                    background: Image.asset('assets/ishtdeep.jpg',
                        color: Colors.black54,
                        colorBlendMode: BlendMode.darken,
                        fit: BoxFit.cover)),
              ),
            ];
          },
          body: Container(
            margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Card(
                elevation: 12.0,
                child: Container(
                    child: ListView.builder(
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
                ))),
          )),
      /*floatingActionButton: FloatingActionButton(
          onPressed: _onPressed,
          tooltip: 'Edit',
          child: Icon(Icons.edit, color: Colors.white),
          backgroundColor: Colors.blue,
        )*/
    );
  }

/* void _onPressed() {}*/
}
