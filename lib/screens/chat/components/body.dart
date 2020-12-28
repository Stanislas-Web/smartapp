import 'package:flutter/material.dart';
import './widgets/category_selector.dart';
import './widgets/favorite_contacts.dart';
import './widgets/recent_chats.dart';
import './widgets/appel.dart';
import './widgets/enligne.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';
import './carousel.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 0;
  int selector = 0;
  final List<String> categories = [
    'Messages',
    'En ligne',
    'Appels',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Container(
            height: getProportionateScreenWidth(80),
            color: Theme.of(context).primaryColor,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20.0),
                      vertical: getProportionateScreenWidth(15.0),
                    ),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        color: index == selectedIndex
                            ? Colors.white
                            : Colors.white60,
                        fontSize: getProportionateScreenWidth(23.0),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  selectedIndex == 0
                      ? RecentChats()
                      : selectedIndex == 1
                          ? EnLigne()
                          : Appel(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
