import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'chatScreenPage.dart';

class ChatListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            // leading: IconButton(
            //   icon: Icon(Feather.chevron_left),
            //   onPressed: () => Navigator.pop(context),
            // ),
            title: Text('Messages'),
            trailing: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Icon(Ionicons.ios_add),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10.0,
              ),
              itemCount: 10,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ChatScreenPage(),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage("images/profile.jpg"),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text('Chat $index'),
                  subtitle: Text('This is last message.'),
                  trailing: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('${index}min ago'),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.green,
                        child: Center(
                          child: Text(
                            '$index',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
