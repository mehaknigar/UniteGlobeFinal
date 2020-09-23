import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:uniteglobe/Const/color.dart';

class BlogDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Feather.heart, color: green),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(MaterialCommunityIcons.share_outline, color: green),
              ),
            ],
          )
        ],
        title: Text(
          'Back',
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                "images/profile.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Physics Books TOPIC",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer cursus ligula dui, sed congue lacus ultricies at. Nullam dolor dolor, tincidunt quis semper in, luctus aliquet leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer cursus ligula dui, sed congue lacus ultricies at. Nullam dolor dolor, tincidunt quis semper in, luctus aliquet leo",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Comments",
                  style: TextStyle(fontSize: 16),
                ),
                Icon(
                  Icons.comment,
                  color: green,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
