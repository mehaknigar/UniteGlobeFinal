import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:uniteglobe/Chat/chatList.dart';
import 'package:uniteglobe/Notification/notificationScreen.dart';
import 'package:uniteglobe/Profile/profile.dart';
import 'package:uniteglobe/widgets/bottomMenu/bottomMenu.dart';

import 'home.dart';

class BottomBar extends StatefulWidget {
  final int pageIndex;

  BottomBar(this.pageIndex);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedPage;
  List<Widget> pageList = List<Widget>();
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  void initState() {
    pageList.add(
      Container(), // just an empty container, it wont ever open
    );
    pageList.add(Home());
    pageList.add(ChatListPage());
    pageList.add(NotificationScreen());

    super.initState();
    _selectedPage = widget.pageIndex;
  }

  ////////////EXIT App ///////////////
  Future<bool> _onBackPressed() {
    if (_selectedPage != 1) {
      setState(() {
        _selectedPage = 1;
      });

      return Future<bool>.value(false);
    }

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Do you really want to exit the app?'),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () => Navigator.pop(context, false),
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () => SystemNavigator.pop(),
          ),
        ],
      ),
    );
  }
  /////////////////End //////////////////////

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedPage,
          children: pageList,
        ),
        //////Bottom AppBar/////
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesome5Solid.grip_lines),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(AntDesign.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(AntDesign.message1),
              title: Text('Chat'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.bell),
              title: Text('Notifications'),
            ),
          ],
          currentIndex: _selectedPage,
          onTap: _onBottomBarItemTapped,
        ),
      ),
    );
  }

  void _onBottomBarItemTapped(int index) {
    if (index == 0) {
      showCupertinoModalBottomSheet(
        context: context,
        expand: false,
        builder: (context, scrollController) => BottomMenu(),
      );
    } else {
      setState(() {
        _selectedPage = index;
      });
    }
  }
}
