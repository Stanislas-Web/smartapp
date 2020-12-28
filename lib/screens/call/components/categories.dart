import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Smartdrc/screens/chat/chat.dart';
import 'package:Smartdrc/screens/wallet/wallet.dart';
import 'package:Smartdrc/screens/pay/pay.dart';

import '../../../size_config.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        wallet(context, 'assets/icons/wallet.svg', 'Smart Banking'),
        pay(context, 'assets/icons/payment.svg', 'Smart Pay'),
        chat(context, 'assets/icons/chat.svg', 'Smart Mobile'),
        market(context, 'assets/icons/market.svg', 'Historique'),
        favoris(context, 'assets/icons/favorite.svg', 'Favoris'),
        client(context, 'assets/icons/directory.svg', 'Service Client'),
      ],
    );
  }
}

Widget cardCategory(context, icon, title) {
  return Container(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03 / 2),
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * 0.1 / 2,
            vertical: MediaQuery.of(context).size.width * 0.1 / 2,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF15A4EF).withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset(
                  icon,
                  color: Color(0XFFFFFFFF),
                  height: 45,
                  width: 45,
                ),
              )
            ],
          ),
        ),
        Text(title),
        Padding(
          padding: EdgeInsets.only(
              // horizontal: MediaQuery.of(context).size.height * 0.1 / 2,
              top: 20),
        ),
      ],
    ),
  );
}

Widget wallet(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, Wallet.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget market(context, icon, title) {
  return GestureDetector(
    onTap: () {
      // Navigator.pushNamed(context, Wallet.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget favoris(context, icon, title) {
  return GestureDetector(
    onTap: () {
      // Navigator.pushNamed(context, Wallet.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget client(context, icon, title) {
  return GestureDetector(
    onTap: () {
      // Navigator.pushNamed(context, Wallet.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget pay(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, PayScreen.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget chat(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, Chat.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}
