import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/data/TablesFragment.dart';
import 'package:flutter_try/app/home/tabs/TemplatePage.dart';
import 'package:flutter_try/app/home/tabs/UsersPage.dart';
import 'package:flutter_try/app/utils/constants.dart';

class HomeFragment extends StatefulWidget {
  HomeFragment({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  int _cIndex = 0;
  PageController _pageController;

  final FirebaseMessaging fireBaseMessaging = new FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();

    fireBaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) {
        print('on message $message');
        return;
      },
      onResume: (Map<String, dynamic> message) {
        print('on resume $message');
        return;
      },
      onLaunch: (Map<String, dynamic> message) {
        print('on launch $message');
        return;
      },
    );

    fireBaseMessaging.getToken().then((token) {
      print('token $token');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _setIndex(int index) {
    setState(() {
      _cIndex = index;
    });

    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  void onPageChanged(int page) {
    setState(() {
      this._cIndex = page;
    });
  }

/*  void _onPressed() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SplashScreen()));
  }*/

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: new PreferredSize(
          child: new Container(
            padding:
                new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: new Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  new Text(
                    'BoozeBurps',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Icon(Icons.local_drink, color: Colors.white),
                  ),
// This is the type used by the popup menu below.

// This menu button widget updates a _selection field (of type WhyFarther,
// not shown here).
                  Padding(
                    padding: const EdgeInsets.only(left: 176.0),
                    child: PopupMenuButton<WhyFarther>(
                      onSelected: (WhyFarther result) {
                        setState(() {});
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<WhyFarther>>[
                        const PopupMenuItem<WhyFarther>(
                          value: WhyFarther.harder,
                          child: Text('Working a lot harder'),
                        ),
                        const PopupMenuItem<WhyFarther>(
                          value: WhyFarther.smarter,
                          child: Text('Being a lot smarter'),
                        ),
                        const PopupMenuItem<WhyFarther>(
                          value: WhyFarther.selfStarter,
                          child: Text('Being a self-starter'),
                        ),
                        const PopupMenuItem<WhyFarther>(
                          value: WhyFarther.tradingCharter,
                          child: Text('Placed in charge of trading charter'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [Colors.black, Color(0xffE78B3A)]),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey[500],
                    blurRadius: 20.0,
                    spreadRadius: 1.0,
                  )
                ]),
          ),
          preferredSize: new Size(MediaQuery.of(context).size.width, 150.0),
        ),
        body: new PageView(
          children: <Widget>[
            new TableFragment(),
            new TemplatePage("Billing Screen"),
            new TemplatePage("Inventory Screen"),
            new TemplatePage("Reservation Screen"),
            new UsersScreen("Users screen")
          ],
          onPageChanged: onPageChanged,
          controller: _pageController,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          selectedFontSize: 14.0,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.touch_app, color: Colors.white),
                title: new Text('Tables')),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on, color: Colors.white),
                title: new Text('Billing')),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_convenience_store, color: Colors.white),
                title: new Text('Inventory')),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today, color: Colors.white),
                title: new Text('Reservations')),
            BottomNavigationBarItem(
                icon: Icon(Icons.group, color: Colors.white),
                title: new Text('Users'))
          ],
          onTap: (index) {
            _setIndex(index);
          },
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
      onWillPop: () async => false,
    );
  }
}
