import 'package:flutter/material.dart';
import 'package:Smartdrc/size_config.dart';
import 'components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
        centerTitle: true,
        title: Text(
          "Code de vérification",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
