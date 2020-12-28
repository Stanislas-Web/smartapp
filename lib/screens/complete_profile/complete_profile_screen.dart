import 'package:flutter/material.dart';

import 'components/body.dart';
import 'package:Smartdrc/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
        title: Text(
          "S'inscrire",
          style: TextStyle(fontSize: getProportionateScreenHeight(16)),
        ),
      ),
      body: Body(),
    );
  }
}
