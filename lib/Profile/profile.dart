import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniteglobe/Const/color.dart';
import 'package:uniteglobe/Post/upload.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(cover, fit: BoxFit.cover),
                  ),
                  Ink(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    padding: const EdgeInsets.only(bottom: 0.0, right: 0.0),
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MaterialButton(
                          color: Colors.white,
                          shape: CircleBorder(),
                          elevation: 0,
                          child: Icon(Icons.camera_alt),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 170),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(social),
                          ),
                          Text(
                            "Samons David",
                            style: Theme.of(context).textTheme.title,
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              UserInfo(),
              UserInfo2(),
              UserInfo3(),
            ],
          ),
        ));
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  Text(
                    "Karachi",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.message,
                    color: green,
                  ),
                  Text(
                    "Send Message",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => UploadPost(),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.photo_library),
              Text(
                "Photos/Videos",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserInfo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Friends",
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    Text(
                      "see all",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        child: Image.asset('images/lisa.jpg'),
                      ),
                      Text("Lisa"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        child: Image.asset('images/lisa.jpg'),
                      ),
                      Text("Lisa"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        child: Image.asset('images/lisa.jpg'),
                      ),
                      Text("Lisa"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        child: Image.asset('images/lisa.jpg'),
                      ),
                      Text("Lisa"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
