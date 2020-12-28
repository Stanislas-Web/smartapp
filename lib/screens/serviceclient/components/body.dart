import 'package:flutter/material.dart';
import 'package:Smartdrc/components/no_account_text.dart';
import 'package:Smartdrc/components/socal_card.dart';
import 'package:Smartdrc/screens/forgot_password/forgot_password_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo1.jpeg',
                  width: getProportionateScreenWidth(150),
                  height: getProportionateScreenWidth(150),
                ),
                // SizedBox(height: SizeConfig.screenHeight * 0.02),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
