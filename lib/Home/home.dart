import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:uniteglobe/widgets/post/post.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 241, 243, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
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
                      onPressed: () {
                        /* showCupertinoModalBottomSheet(
                            context: context,
                            builder: (context, scrollController) => Container(
                              child: Text('hey'),
                            ),
                          ); */
                      },
                      icon: Icon(
                        AntDesign.search1,
                        color: Color(0xff57A127),
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
              Expanded(
                child: ListView(
                  children: [
                    Post(),
                    Post(),
                    Post(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
