import 'package:flutter/material.dart';

import 'components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmartBanking extends StatelessWidget {
  static String routeName = "/smartbanking";
  // int _selectedIndex = 0;
  // int _onItemTapped = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Smart Banking',
          style:
              TextStyle(color: Color(0xFF000000), fontWeight: FontWeight.w300),
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
            }),
        // title: const Text('Next page'),
        // automaticallyImplyLeading: false,
      ),
      body: Body(),
      // bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
