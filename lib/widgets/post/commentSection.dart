import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:like_button/like_button.dart';
import 'package:uniteglobe/Const/color.dart';

class CommentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
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
      ),
    );
  }
}
