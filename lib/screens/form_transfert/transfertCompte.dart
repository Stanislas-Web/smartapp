// import 'package:Smartdrc/screens/association_compte_form/components/association_compte_form.dart';
import 'package:flutter/material.dart';
import 'package:Smartdrc/components/socal_card.dart';
import 'package:Smartdrc/constants.dart';
import 'package:Smartdrc/size_config.dart';
import 'components/trasfertCompteform.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransfertCompte extends StatelessWidget {
  static String routeName = "/transfertcompte";
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
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
        title: Text("Transfert d'argent"),
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
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  Text(
                    "Transférer votre argent Smart \nvers une banque",
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  // AssociationCompteForm(),
                  TransfertCompteForm(),
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
