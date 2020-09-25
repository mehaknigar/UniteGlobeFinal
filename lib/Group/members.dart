import 'package:flutter/material.dart';
import 'package:uniteglobe/Const/color.dart';

class Members extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text(
          'Members',
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
                  color: Colors.blue,
                  child: Center(
                    child: Text("Remove"),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
