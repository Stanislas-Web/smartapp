import 'package:flutter/material.dart';
import 'package:Smartdrc/components/socal_card.dart';
import 'package:Smartdrc/constants.dart';
import 'package:Smartdrc/size_config.dart';
import 'components/association_compte_form.dart';

class AssociationCompte extends StatelessWidget {
  static String routeName = "/associationcompte";
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Associer Compte"),
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
                  Text(
                    "Associer votre compte Smart avec " + arguments['nameBank'],
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  AssociationCompteForm(),
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
