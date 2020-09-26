import 'dart:convert';
import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:uniteglobe/Const/color.dart';

class ChatScreenPage extends StatefulWidget {
  @override
  _ChatScreenPageState createState() => _ChatScreenPageState();
}

class _ChatScreenPageState extends State<ChatScreenPage> {
  final messageTextController = TextEditingController();

  String messageText;

  String label = 'Type your message here...';

  void changeLabel() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        label = 'Type your message here...';
      });
    });
  }

  List<MessageBubble> messageBubbles = [
    MessageBubble(
      date: "date",
      sender: 'sender',
      time: ' time',
      text: 'ext',
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green,
        title: Text(
          'Instant Messaging',
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ListView(
                reverse: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                children: messageBubbles,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Theme.of(context).accentColor,
                    width: 2.0,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      controller: messageTextController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        hintText: label,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      //SUBSCRIBNG TO THE MESSAGE
                      if (messageTextController.text.isNotEmpty) {
                        final messageBubble = MessageBubble(
                          sender: (messageBubbles.length % 2) == 0
                              ? 'you'
                              : 'other',
                          text: messageText,
                          time: DateFormat().add_jm().format(DateTime.now()),
                          date: DateFormat()
                              .addPattern('MMMM dd, yyyy')
                              .format(DateTime.now()),
                        );
                        //CLEAR THE VALUE OF THE MESSAGE CONTROLLER
                        messageTextController.clear();

                        //CLEAR THE VALUE OF THE MESSAGE TEXT VARAIBLE
                        messageText = '';
                        setState(() {
                          messageBubbles.add(messageBubble);
                        });
                      } else {
                        setState(() {
                          label = 'Please type something...';
                        });
                        changeLabel();
                      }
                    },
                    child: Icon(
                      FontAwesome.send_o,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatefulWidget {
  final String text, sender, time, date;

  MessageBubble({this.sender, this.text, this.time, this.date});

  @override
  _MessageBubbleState createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  double dateBoxHeight = 0;

  double btnBoxHeight = 0;

  void hideDtlBtn() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        setState(() {
          btnBoxHeight = 0;
        });
      },
    );
  }

  void dtlMsgCheck() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Delete this message?'),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () => Navigator.pop(context),
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: widget.sender == 'you'
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.sender == 'user' ? 'You' : 'Other',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black54,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                dateBoxHeight = dateBoxHeight == 0 ? 14 : 0;
              });
            },
            onLongPress: () {
              if (widget.sender == 'you') {
                hideDtlBtn();
              }
            },
            child: Material(
              elevation: 6.0,
              borderRadius: widget.sender == 'you'
                  ? BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    )
                  : BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
              color: widget.sender == 'you'
                  ? Theme.of(context).accentColor
                  : Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          widget.time == null
              ? SizedBox()
              : Text(
                  widget.time,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
                  ),
                ),
          widget.date == null
              ? SizedBox()
              : AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: dateBoxHeight,
                  child: Text(
                    widget.date,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                    ),
                  ),
                ),
          AnimatedContainer(
            duration: Duration(milliseconds: 100),
            height: btnBoxHeight,
            child: FlatButton(
              onPressed: () => dtlMsgCheck(),
              child: Text('Unsend'),
            ),
          ),
        ],
      ),
    );
  }
}
