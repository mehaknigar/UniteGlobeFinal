import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:like_button/like_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:uniteglobe/Const/color.dart';
import 'package:uniteglobe/Profile/profile.dart';

class Post extends StatelessWidget {
  final double buttonSize = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 10),
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
                LikeButton(
                  likeBuilder: (bool isLiked) => Icon(
                    isLiked ? AntDesign.like1 : SimpleLineIcons.like,
                    color: isLiked ? Color(0xff57A127) : Colors.black87,
                  ),
                  likeCount: 0,
                  circleColor: CircleColor(
                    start: Color(0xff3FD2B4),
                    end: Color(0xff57A127),
                  ),
                  bubblesColor: BubblesColor(
                    dotPrimaryColor: Color(0xff57A127),
                    dotSecondaryColor: Color(0xff19A15F),
                  ),
                ),
                IconButton(
                  icon: Icon(Feather.message_circle),
                  onPressed: () {
                    showCupertinoModalBottomSheet(
                      expand: true,
                      context: context,
                      builder: (context, scrollController) => PostBottomSheet(),
                    );
                  },
                ),
                Icon(MaterialCommunityIcons.share_outline),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PostBottomSheet extends StatefulWidget {
  @override
  _PostBottomSheetState createState() => _PostBottomSheetState();
}

class _PostBottomSheetState extends State<PostBottomSheet>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: TabBar(
              controller: _controller,
              tabs: [
                Tab(
                  icon: const Icon(SimpleLineIcons.like),
                ),
                Tab(
                  icon: const Icon(Feather.message_circle),
                ),
                Tab(
                  icon: const Icon(MaterialCommunityIcons.share_outline),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  LikesSection(),
                  CommentsSection(),
                  ShareSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LikesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          PeopleTile(),
          PeopleTile(),
          PeopleTile(),
        ],
      ),
    );
  }
}

class CommentsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          CommentItem(),
        ],
      ),
    );
  }
}

class ShareSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          PeopleTile(),
        ],
      ),
    );
  }
}

class PeopleTile extends StatelessWidget {
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
        title: Text("Maya"),
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

class CommentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage("images/profile.jpg"),
          backgroundColor: Colors.transparent,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Maya",
              style: TextStyle(
                color: green,
                fontSize: 20.0,
              ),
            ),
            Text(
              '12min ago',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
                "Is there a way to use a tabbarview inside a container without having to set a specific height? I'm getting a stuck because the children in my tabbarviews are variable height"),
            Row(
              children: [
                LikeButton(
                  likeBuilder: (bool isLiked) => Icon(
                    isLiked ? AntDesign.like1 : SimpleLineIcons.like,
                    color: isLiked ? Color(0xff57A127) : Colors.black87,
                  ),
                  likeCount: 0,
                  circleColor: CircleColor(
                    start: Color(0xff3FD2B4),
                    end: Color(0xff57A127),
                  ),
                  bubblesColor: BubblesColor(
                    dotPrimaryColor: Color(0xff57A127),
                    dotSecondaryColor: Color(0xff19A15F),
                  ),
                ),
                IconButton(
                  icon: Icon(Feather.message_circle),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
