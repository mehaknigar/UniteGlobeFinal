import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniteglobe/Const/color.dart';
import 'package:uniteglobe/Group/groupPage.dart';

class Groups extends StatefulWidget {
  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text(
          'Groups',
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
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Text(
              "Suggested Groups",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(top: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return _suggestedgroup(context);
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Groups",
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          ...[1, 2, 3, 4, 5].map(
            (product) => ProductListItem(),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget _suggestedgroup(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
                image: DecorationImage(
                    image: AssetImage('images/post.jpg'), fit: BoxFit.cover)),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 12),
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: new BorderRadius.circular(2.0),
            ),
            width: 100,
            height: 30,
            child: Center(
              child: Text("Join"),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        elevation: 0.5,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => GroupPage(),
            ),
          );
        },
        child: Row(
          children: <Widget>[
            Ink(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('images/post.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("Karachi"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Private Group"),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: new BorderRadius.circular(2.0),
                              ),
                              width: 100,
                              height: 30,
                              child: Center(
                                child: Text("Join"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
