import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
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
        centerTitle: true,
        title: Text("Code Pin oublié"),
      ),
      body: Body(),
    );
  }
}
