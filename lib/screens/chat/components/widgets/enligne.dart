import 'package:flutter/material.dart';
import 'package:Smartdrc/models/message_model.dart';
import '../../chat_screen.dart';
import 'package:Smartdrc/size_config.dart';

class EnLigne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(30.0),
          //   topRight: Radius.circular(30.0),
          // ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = onLigne[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatScreen(
                      user: chat.sender,
                    ),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: chat.unread ? Color(0xFFeef9ff) : Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: getProportionateScreenWidth(30.0),
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  chat.sender.name,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.0),
                              // Container(
                              //   width: MediaQuery.of(context).size.width * 0.45,
                              //   child: Text(
                              //     chat.text,
                              //     style: TextStyle(
                              //       color: Colors.blueGrey,
                              //       fontSize: 15.0,
                              //       fontWeight: FontWeight.w600,
                              //     ),
                              //     overflow: TextOverflow.ellipsis,
                              //   ),
                              // ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          // Text(
                          //   chat.time,
                          //   style: TextStyle(
                          //     color: Colors.grey,
                          //     fontSize: 15.0,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          SizedBox(height: 5.0),
                          chat.unread
                              ? Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              : Text('Aujourd\'hui'),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
