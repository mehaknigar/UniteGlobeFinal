import 'package:flutter/material.dart';
import 'package:uniteglobe/Const/color.dart';

class FriendsRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          title: Text(
            'Friends Request',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: green,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Requests(),
            Requests(),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Suggested Friends",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
            SuggestedFriends(),
          ],
        ));
  }
}

class Requests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage("images/profile.jpg"),
          backgroundColor: Colors.transparent,
        ),
        title: Text("Lisa Blackpink"),
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                color: Colors.blueGrey[50],
                child: Icon(
                  Icons.clear,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuggestedFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage("images/profile.jpg"),
          backgroundColor: Colors.transparent,
        ),
        title: Text("Lisa Blackpink"),
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 80,
                color: Colors.green,
                child: Center(
                  child: Text("Add"),
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
