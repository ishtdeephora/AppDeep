import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/widgets/DialogWidget.dart';
import 'package:flutter_try/app/home/widgets/ListViewWidget.dart';
import 'package:flutter_try/app/home/widgets/WTCardWidget.dart';
import 'package:flutter_try/app/model/CustomerInfo.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class UsersScreen extends StatelessWidget {
  UsersScreen(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
        body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
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
                            Icons.notifications_active,
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
                        onTap: (index) {
                          if (index == 1) {}
                        },
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          new Tab(
                              icon: new Icon(Icons.info), text: "About you"),
                          new Tab(
                              icon: new Icon(Icons.settings), text: "Settings"),
                        ],
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                    children: [new CardWidget(), new RecordsWidget()])

                /*floatingActionButton: FloatingActionButton(
          onPressed: _onPressed,
          tooltip: 'Edit',
          child: Icon(Icons.edit, color: Colors.white),
          backgroundColor: Colors.blue,
        )*/
                )));
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
      backgroundColor: Colors.white70,
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(20.0),
              child: WTCardWidget(
                holder: Container(
                  child: Column(
                    children: [
                      Center(
                        child: ClipOval(
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset('assets/ishtdeep.jpg',
                                fit: BoxFit.contain, height: 50)),
                      ),
                      Center(
                        child: Container(
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Consumer<CustomerInfo>(
                              builder: (context, dataProvider, _) => Text(
                                dataProvider.name ?? "",
                                style: new TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.accessibility_new,
                                  color: Colors.black54,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Engineer',
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0),
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
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.0),
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
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.0),
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
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DialogWidget.asyncConfirmDialog(
              context, 'Are you sure you want to edit ?', '', 'Ok', 'Cancel');
        },
        tooltip: 'Main navigation',
        child: Icon(Icons.edit, color: Colors.white),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class RecordsWidget extends StatelessWidget {
  const RecordsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListViewWidget(),
    );
  }
}
