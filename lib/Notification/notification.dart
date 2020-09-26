import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniteglobe/Const/color.dart';

class NotificationSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text(
          'Notification Settings',
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Mute Notification",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              width: double.infinity,
              height: 45.0,
              child: ButtonOutline('No Mute'),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 45.0,
              child: ButtonOutline('A Day Mute'),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 45.0,
              child: ButtonOutline('A week Mute'),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 45.0,
              child: ButtonOutline('A Month Mute'),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonOutline extends StatelessWidget {
  String text;
  ButtonOutline(this.text);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      splashColor: green,
      child: Text(text, style: TextStyle(color: Colors.green, fontSize: 15)),
      borderSide: BorderSide(
        color: Colors.grey,
        style: BorderStyle.solid,
        width: 1.8,
      ),
      onPressed: () {},
    );
  }
}
