import 'package:flutter/material.dart';
import 'package:uniteglobe/Const/color.dart';
import 'package:uniteglobe/widgets/post/post.dart';

class SavedPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text(
          'Saved Posts',
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
        child: Column(
          children: [
            Post(),
            Post(),
          ],
        ),
      ),
    );
  }
}
