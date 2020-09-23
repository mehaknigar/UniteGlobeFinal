import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:uniteglobe/Profile/profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 241, 243, 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.symmetric(vertical: 20),
                elevation: 11,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        AntDesign.search1,
                        color: Colors.green[400],
                      ),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  ),
                ),
              ),
              Post(),
            ],
          ),
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10),
            leading: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage("images/profile.jpg"),
                backgroundColor: Colors.transparent,
              ),
            ),
            title: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              child: Text(
                'hey',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            subtitle: Text('1 Day ago'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(MaterialCommunityIcons.dots_vertical),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('images/post.jpg'),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(SimpleLineIcons.like),
                Icon(Feather.message_circle),
                Icon(MaterialCommunityIcons.share_outline),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
