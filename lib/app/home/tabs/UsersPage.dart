import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/widgets/WTCardWidget.dart';

// ignore: must_be_immutable
class UsersScreen extends StatelessWidget {
  UsersScreen(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text(
                  'Requests',
                  style: new TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0),
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
                automaticallyImplyLeading: false,
                expandedHeight: 200.0,
                floating: false,
                elevation: 16.0,
                backgroundColor: Colors.black,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset('assets/ishtdeep.jpg',
                        color: Colors.black54,
                        colorBlendMode: BlendMode.darken,
                        fit: BoxFit.cover)),
                bottom: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    new Tab(icon: new Icon(Icons.info), text: "About you"),
                    new Tab(icon: new Icon(Icons.settings), text: "Settings"),
                  ],
                ),
              ),
            ];
          },
          body: new CardWidget()),
      /*floatingActionButton: FloatingActionButton(
          onPressed: _onPressed,
          tooltip: 'Edit',
          child: Icon(Icons.edit, color: Colors.white),
          backgroundColor: Colors.blue,
        )*/
    ));
  }

/* void _onPressed() {}*/
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(20.0),
            child: WTCardWidget(
              holder: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ClipOval(
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset('assets/ishtdeep.jpg',
                                fit: BoxFit.contain, height: 75)),
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Ishtdeep Hora',
                              style: new TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.alternate_email,
                                  color: Colors.black54,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Engineer',
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Hyderabad',
                                      style: new TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.check, color: Colors.teal),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Bedroom, Hall, Kitchen',
                                      style: new TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
