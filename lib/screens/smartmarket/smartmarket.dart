import 'package:flutter/material.dart';

import 'components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmartMarket extends StatelessWidget {
  static String routeName = "/smartmarket";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Smart Market",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            height: 15,
            width: 15,
            color: Color(0xFF000000),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // title: const Text('Next page'),
        // automaticallyImplyLeading: false,
      ),
      body: Body(),
    );
  }
}
