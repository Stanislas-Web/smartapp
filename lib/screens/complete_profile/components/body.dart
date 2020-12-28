import 'package:flutter/material.dart';
import 'package:Smartdrc/size_config.dart';

import 'complete_profile_form.dart';

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
                // SizedBox(height: SizeConfig.screenHeight * 0.03),
                // Text("Complete Profile", style: headingStyle),
                Image.asset(
                  'assets/images/logo1.jpeg',
                  width: 150,
                  height: 150,
                ),

                SizedBox(height: SizeConfig.screenHeight * 0.02),
                CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "En cliquant sur confirmer vous acceptez nos conditions générales",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenHeight(16)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
