import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_try/app/home/data/TablesFragment.dart';
import 'package:flutter_try/app/home/tabs/TemplatePage.dart';
import 'package:flutter_try/app/home/tabs/UsersPage.dart';
import 'package:provider/provider.dart';

import 'CustomerInfo.dart';

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
     // print('token $token');
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
    return ChangeNotifierProvider(
      builder: (context) => CustomerInfo(),
      child: WillPopScope(
        child: Scaffold(
          backgroundColor: Color(0xffF5F5F5),
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
                  icon:
                      Icon(Icons.local_convenience_store, color: Colors.white),
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
      ),
    );
  }
}
