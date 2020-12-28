import 'package:flutter/material.dart';
import 'package:Smartdrc/constants.dart';
import 'package:Smartdrc/size_config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: SizeConfig.screenHeight * 0.05),
              // Text(
              //   "OTP Verification",
              //   style: headingStyle,
              // ),
              Image.asset(
                'assets/images/logo1.jpeg',
                width: 150,
                height: 150,
              ),

              Text(
                "Nous avons envoyé votre code \nau +243 898 860 ***",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1 / 4),
              buildTimer(),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: Text(
                  "Renvoyer le code ",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Le code expirera dans ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
        ),
      ],
    );
  }
}
