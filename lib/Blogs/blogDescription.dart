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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 220,
            width: double.infinity,
            child: Image.asset(
              "images/profile.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ]),
    );
  }
}
