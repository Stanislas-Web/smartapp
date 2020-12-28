import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Smartdrc/screens/wallet/wallet.dart';

import '../../../size_config.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sectionTitle('Payer un Proche'),
          Wrap(
            children: [
              amiSection(context, 'assets/icons/ami.svg', 'Paye un(e) ami(e)'),
              moiSection(context, 'assets/icons/moi.svg', 'Paye moi'),
              factureSection(
                  context, 'assets/icons/facture.svg', 'Payer Facture'),
            ],
          ),
          sectionTitle('Achat Crédit'),
          achatSection(),
          sectionTitle('Réabonnement Tv'),
          reabonnementSection(),
        ],
      ),
    );
  }
}

Widget cardCategory(context, icon, title) {
  return Container(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03 / 2),
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * 0.1 / 2,
            vertical: MediaQuery.of(context).size.width * 0.1 / 2,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF15A4EF).withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset(
                  icon,
                  color: Color(0XFFFFFFFF),
                  height: 45,
                  width: 45,
                ),
              )
            ],
          ),
        ),
        Text(title)
      ],
    ),
  );
}

Widget amiSection(context, icon, title) {
  return GestureDetector(
    onTap: () {
      // Navigator.pushNamed(context, Wallet.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget moiSection(context, icon, title) {
  return GestureDetector(
    onTap: () {
      // Navigator.pushNamed(context, Wallet.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget factureSection(context, icon, title) {
  return GestureDetector(
    onTap: () {
      // Navigator.pushNamed(context, Wallet.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget achatSection() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 180,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/voda.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(right: 10),
          width: 180,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/orange.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 180,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/airtel.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        // SizedBox(width: getProportionateScreenWidth(20)),
      ],
    ),
  );
}

Widget sectionTitle(label) {
  return Padding(
    padding: EdgeInsets.only(
      // left: 10,
      bottom: 10,
      top: 20,
    ),
    child: Text(
      label,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w300, color: Color(0xFF000000)),
    ),
  );
}

Widget reabonnementSection() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 180,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/canal.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(right: 10),
          width: 180,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/start.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 180,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/dstv.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        // SizedBox(width: getProportionateScreenWidth(20)),
      ],
    ),
  );
}
