import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:uniteglobe/Blogs/blogs.dart';
import 'package:uniteglobe/Group/group.dart';
import 'package:uniteglobe/Profile/profile.dart';
import 'package:uniteglobe/Settings/setting.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            BottomMenuProfileButton(),
            BottomMenuPagesList(),
            Divider(
              color: Color(0xffA7A7A7),
            ),
            BottomMenuPagesList2(),
          ],
        ),
      ),
    );
  }
}

class BottomMenuProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Profile(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage("images/profile.jpg"),
            backgroundColor: Colors.transparent,
          ),
          title: Text(
            'Mubeen',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          trailing: Icon(Entypo.chevron_small_right),
        ),
      ),
    );
  }
}

class BottomMenuPagesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomMenuPagesListItem(
            pageName: 'Blogs',
            icon: MaterialCommunityIcons.file_document_box_outline,
            pageWidget: Blogs(),
          ),
          BottomMenuPagesListItem(
            pageName: 'Groups',
            icon: MaterialCommunityIcons.account_group_outline,
            pageWidget: Groups(),
          ),
          BottomMenuPagesListItem(
            pageName: 'Friend Requests',
            icon: AntDesign.adduser,
            pageWidget: Groups(),
          ),
          BottomMenuPagesListItem(
            pageName: 'Saved Posts',
            icon: Icons.bookmark_border,
            pageWidget: Profile(),
          ),
          BottomMenuPagesListItem(
            pageName: 'My Settings',
            icon: SimpleLineIcons.settings,
            pageWidget: Settings(),
          ),
          BottomMenuPagesListItem(
            pageName: 'Notifications Setting',
            icon: Feather.bell,
            pageWidget: Profile(),
          ),
        ],
      ),
    );
  }
}

class BottomMenuPagesList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomMenuPagesListItem(
            pageName: 'Contact Us',
            icon: Feather.message_circle,
            pageWidget: Profile(),
          ),
          BottomMenuPagesListItem(
            pageName: 'Logout',
            icon: Feather.log_out,
            pageWidget: Profile(),
          ),
        ],
      ),
    );
  }
}

class BottomMenuPagesListItem extends StatelessWidget {
  final String pageName;
  final Widget pageWidget;
  final IconData icon;

  const BottomMenuPagesListItem(
      {Key key, this.pageName, this.pageWidget, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => pageWidget,
          ),
        );
      },
      leading: Icon(
        icon,
        size: 28.0,
        color: Color(0xffA7A7A7),
      ),
      title: Text(
        pageName,
        style: TextStyle(
          fontSize: 24.0,
          color: Color(0xffA7A7A7),
        ),
      ),
    );
  }
}
