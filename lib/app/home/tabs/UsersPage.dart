import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/widgets/WTCardWidget.dart';

// ignore: must_be_immutable
class UsersScreen extends StatelessWidget {
  UsersScreen(this.title);

  final String title;

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
                    background: Image.asset('assets/ishtdeep.jpg',
                        color: Colors.black54,
                        colorBlendMode: BlendMode.darken,
                        fit: BoxFit.cover)),
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
    );
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
                    children: [
                      ClipOval(
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset('assets/ishtdeep.jpg',
                              fit: BoxFit.contain, height: 75)),
                      Container(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Ishtdeep Hora',
                            style: new TextStyle(
                                color: Color(0xff1a237e),
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0),
                          )),
                    ],
                  ),
                ),
              ),
            )));
  }
}
