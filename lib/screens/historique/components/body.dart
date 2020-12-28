import 'package:flutter/material.dart';
import 'package:Smartdrc/components/headerWallet.dart';

import '../../../size_config.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWallet(),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}

Widget headerBanking(context) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.3 / 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/rico.png'),
                radius: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  "Rico",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.qr_code_outlined,
                  color: Color(0xFF15A4EF),
                  size: 35,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.add_circle_outline,
                  color: Color(0xFF15A4EF),
                  size: 35,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
