import 'package:flutter/material.dart';
import 'package:Smartdrc/models/message_model.dart';
import '../../chat_screen.dart';
import 'package:Smartdrc/size_config.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      // color: Color(0xFFFFFFFF),

      child: Container(
        color: Color(0xFFFFFFFF),
        padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(2)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Contacts Favoris',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    iconSize: 30.0,
                    color: Colors.blueGrey,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: getProportionateScreenWidth(100.0),
              child: ListView.builder(
                padding:
                    EdgeInsets.only(left: getProportionateScreenWidth(10.0)),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          user: favorites[index],
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: getProportionateScreenWidth(28),
                            backgroundImage:
                                AssetImage(favorites[index].imageUrl),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            favorites[index].name,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: getProportionateScreenWidth(10.0),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
