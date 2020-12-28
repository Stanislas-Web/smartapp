import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Smartdrc/provider/buttonBackChatProvider.dart';
import 'package:Smartdrc/screens/routestack.dart';

import 'components/body.dart';

class Chat extends StatelessWidget {
  static String routeName = "/chat";
  ButtonBackProvider actionBack = new ButtonBackProvider();
  // int _selectedIndex = 0;
  // int _onItemTapped = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/back.svg',
              height: 15,
              width: 15,
              color: Color(0xFFF000000),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  new MaterialPageRoute(builder: (BuildContext context) {
                return new RouteStack();
              }));
            }),
        centerTitle: true,
        title: Text(
          "Smart Mobile",
          style: TextStyle(
            color: Color(0xFF000000),
            fontWeight: FontWeight.w300,
          ),
        ),
        backgroundColor: Colors.white,
        // title: const Text('Next page'),
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //     icon: SvgPicture.asset(
        //       'assets/icons/back.svg',
        //       height: 15,
        //       width: 15,
        //       color: Color(0xFFFFFFFF),
        //     ),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     }),
      ),
      body: Body(),
      // bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
