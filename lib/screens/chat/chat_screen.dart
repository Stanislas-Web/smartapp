import 'package:flutter/material.dart';
import 'package:Smartdrc/models/message_model.dart';
import 'package:Smartdrc/models/user_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Smartdrc/screens/call/call.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 80.0,
            )
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).accentColor : Color(0xFF05445E),
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              )
            : BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            message.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
        IconButton(
          icon: message.isLiked
              ? Icon(Icons.favorite)
              : Icon(Icons.favorite_border),
          iconSize: 30.0,
          color: message.isLiked ? Color(0xFF05445E) : Colors.blueGrey,
          onPressed: () {},
        )
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: Container(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                style: TextStyle(height: 3.0, color: Colors.black),
                onChanged: (value) {},
                decoration: const InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
                  hintText: 'Envoyer un message...',
                ),
                // decoration: InputDecoration.collapsed(

                // ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.user.imageUrl),
                  radius: 18,
                ),
              ),
              Text(
                widget.user.name,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/back.svg',
              height: 15,
              width: 15,
              color: Color(0xFF8f8d8d),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            iconSize: 30.0,
            color: Color(0xFF05445E),
            onPressed: () {
              Navigator.pushNamed(context, '/call', arguments: {
                'image': widget.user.imageUrl,
                'name': widget.user.name
              });
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ClipRRect(
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(30.0),
                  //   topRight: Radius.circular(30.0),
                  // ),
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
