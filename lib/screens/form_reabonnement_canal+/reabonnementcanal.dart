import 'package:flutter/material.dart';
import 'package:Smartdrc/components/socal_card.dart';
import 'package:Smartdrc/constants.dart';
import 'package:Smartdrc/size_config.dart';
import 'components/achat_credit_form.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReabonnementCanal extends StatelessWidget {
  static String routeName = "/reabonnementcanal";
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
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
          "Réabonnez-vous avec",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                  // Text("Register Account", style: headingStyle),
                  Image.asset(
                    arguments['image'],
                    width: 120,
                    height: 120,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  AchatCreditForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),

                  SizedBox(height: getProportionateScreenHeight(20)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
