import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(12.0),
          children: [
            NotificationTile(),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage("images/profile.jpg"),
            backgroundColor: Colors.transparent,
          ),
          title: Column(
            //mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Someone liked your picture.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                '10min ago',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          trailing: IconButton(
            icon: Icon(MaterialCommunityIcons.dots_horizontal),
            onPressed: () {},
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
