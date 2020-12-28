import 'package:flutter/material.dart';

import 'components/body.dart';

class Setting extends StatelessWidget {
  static String routeName = "/setting";
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
          'Reglage',
          style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Body(),
    );
  }
}
