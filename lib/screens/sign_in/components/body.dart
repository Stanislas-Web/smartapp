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
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
