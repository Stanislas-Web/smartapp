import 'package:Smartdrc/screens/smartmarket/smartmarket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Smartdrc/screens/chat/chat.dart';
import 'package:Smartdrc/screens/smartbanking/smartbanking.dart';
import 'package:Smartdrc/screens/pay/pay.dart';
import 'package:Smartdrc/screens/historique/historique.dart';
import 'package:Smartdrc/provider/buttonBackChatProvider.dart';
import 'package:Smartdrc/size_config.dart';
import 'package:Smartdrc/screens/serviceclient/service_client.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  ButtonBackProvider backAction = new ButtonBackProvider();
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        smartBanking(context, 'assets/icons/bankIc.svg', 'Smart Banking'),
        market(context, 'assets/icons/market.svg', 'Smart Market'),
        chat(
            context, 'assets/icons/mobile-app.svg', 'Smart Mobile', backAction),
        pay(context, 'assets/icons/payment.svg', 'Smart Pay'),
        historique(context, 'assets/icons/memoire.svg', 'Historique'),
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
          margin: EdgeInsets.all(
            getProportionateScreenWidth(10),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(30),
            vertical: getProportionateScreenWidth(20),
          ),
          decoration: BoxDecoration(
            color: Color(0xFF15A4EF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset(
                  icon,
                  color: Color(0XFFFFFFFF),
                  height: getProportionateScreenWidth(30),
                  width: getProportionateScreenWidth(20),
                ),
              )
            ],
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(12),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            // horizontal: MediaQuery.of(context).size.height * 0.1 / 2,
            top: getProportionateScreenWidth(30),
          ),
        ),
      ],
    ),
  );
}

Widget smartBanking(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, SmartBanking.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget market(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, SmartMarket.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget historique(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, Historique.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget client(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, ServiceClient.routeName);
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

Widget chat(context, icon, title, backAction) {
  return GestureDetector(
    onTap: () {
      backAction.incrementNumber();
      Navigator.pushNamed(context, Chat.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}
