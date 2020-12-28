import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body.dart';

class ServiceClient extends StatelessWidget {
  static String routeName = "/serviceclient";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Nous laisser un Message"),
      ),
      body: Body(),
    );
  }
}
