import 'package:Smartdrc/screens/pay/pay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Smartdrc/screens/transaction/transaction.dart';
import 'package:Smartdrc/screens/demande_retrait/demanderetrait.dart';
import '../../../size_config.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF15A4EF),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xFFebebeb),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultHeight() * 0.9 / 27),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                envoiReception(context, 'assets/icons/envoie-recevoir.svg',
                    'Démander un rétrait'),
                transfert(
                    context, 'assets/icons/money-transfer.svg', 'Transfert'),
                factureSection(
                    context, 'assets/icons/facture.svg', 'Payer Facture'),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(2),
            ),
            sectionTitle('Achat Crédit'),
            achatSection(context),
            sectionTitle('Réabonnement Tv'),
            reabonnementSection(context),
          ],
        ),
      ),
    );
  }
}

Widget achatSection(context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/achatcredit',
                arguments: {'image': 'assets/images/vodacom.png'});
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            width: 190,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/vodacom.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/achatcredit',
              arguments: {'image': 'assets/images/orange.png'},
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            width: 190,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/orange.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/achatcredit',
              arguments: {'image': 'assets/images/airtel.png'},
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            width: 190,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/airtel.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/achatcredit',
                arguments: {'image': 'assets/images/africell.png'});
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            width: 190,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/africell.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/achatcredit',
                arguments: {'image': 'assets/images/mtn.png'});
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            width: 190,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/mtn.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

        // SizedBox(width: getProportionateScreenWidth(20)),
      ],
    ),
  );
}

Widget cardCategory(context, icon, title) {
  return Container(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(
            getProportionateScreenWidth(10),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(30),
            vertical: getProportionateScreenWidth(20),
          ),
          decoration: BoxDecoration(
            color: Color(0xFF15A4EF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset(
                  icon,
                  color: Color(0XFFFFFFFF),
                  height: getProportionateScreenWidth(30),
                  width: getProportionateScreenWidth(20),
                ),
              )
            ],
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(12),
          ),
        ),
      ],
    ),
  );
}

Widget associerCompte(context, icon, title) {
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: choix(context),
          );
        },
      );
    },
    child: cardCategory(context, icon, title),
  );
}

choixTransfert(BuildContext context) {
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 16),
        margin: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black26,
          //     blurRadius: 10,
          //     offset: Offset(0, 10),
          //   )
          // ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Transfert d' argent"),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/transfertcomptesmart',
                    arguments: {'numberCheck': "smart"});
              },
              child: containerTransfert("Smart vers Smart", 1),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/transfertcompte',
                    arguments: {'numberCheck': "banque"});
              },
              child: containerTransfert("Vers une Banque", 2),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/transfertcomptemobilemoney',
                    arguments: {
                      'numberCheck': "mobile",
                    });
              },
              child: containerTransfert("Vers un Mobile Money", 3),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                child: Text("Fermer"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget containerTransfert(name, numberCheck) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[100],
          blurRadius: 4.5,
          spreadRadius: 10,
        )
      ],
    ),
    padding: EdgeInsets.symmetric(
      vertical: getProportionateScreenWidth(5.0),
      horizontal: getProportionateScreenWidth(5.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(numberCheck == 1
                  ? Icons.account_balance_wallet_outlined
                  : numberCheck == 2
                      ? Icons.monetization_on_outlined
                      : Icons.phone_android_outlined),
            ),
            SizedBox(
              width: getProportionateScreenWidth(16),
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(13),
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_right_alt,
          color: Colors.grey[400],
        ),
        // SizedBox(
        //   width: 16,
        // ),
        // Text("Equity"),
      ],
    ),
  );
}

choix(BuildContext context) {
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 16),
        margin: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black26,
          //     blurRadius: 10,
          //     offset: Offset(0, 10),
          //   )
          // ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Associer Compte"),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/associationcompte', arguments: {
                  'nameBank': "Equity Bank",
                  'image': 'assets/images/EQ.png'
                });
              },
              child: containerCompte("Equity Bank", "assets/images/EQ.png"),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/associationcompte', arguments: {
                  'nameBank': "RawBank",
                  'image': "assets/images/raw.png"
                });
              },
              child: containerCompte("RawBank", "assets/images/raw.png"),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/associationcompte', arguments: {
                  'nameBank': "United Bank of Africa",
                  'image': "assets/images/UB.png"
                });
              },
              child: containerCompte(
                  "United Bank of Africa", "assets/images/UB.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                child: Text("Fermer"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget transfert(context, icon, title) {
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: choixTransfert(context),
          );
        },
      );
    },
    child: cardCategory(context, icon, title),
  );
}

Widget containerCompte(nameBank, imageBank) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[100],
          blurRadius: 4.5,
          spreadRadius: 10,
        )
      ],
    ),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imageBank),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(nameBank),
          ],
        ),
        Icon(
          Icons.arrow_right_alt,
          color: Colors.grey[400],
        ),
        // SizedBox(
        //   width: 16,
        // ),
        // Text("Equity"),
      ],
    ),
  );
}

Widget transaction(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, Transaction.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget pay(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, PayScreen.routeName);
    },
    child: cardCategory(context, icon, title),
  );
}

Widget envoiReception(context, icon, title) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, DemandeRetrait.routeName);
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

Widget sectionTitle(label) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(
          left: 20,
          bottom: 10,
          top: 20,
        ),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000)),
        ),
      ),
    ],
  );
}

Widget balanceCompte(imageBank, solde) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              solde,
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 80,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageBank),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget reabonnementSection(context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/reabonnementcanal',
                arguments: {'image': 'assets/images/canal+.png'});
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            width: 190,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/canal+.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/reabonnement',
                arguments: {'image': 'assets/images/startimes.png'});
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            width: 190,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/startimes.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/reabonnementdstv',
                arguments: {'image': 'assets/images/dstv.png'});
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            width: 190,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/dstv.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/reabonnement',
                arguments: {'image': 'assets/images/bluesat.png'});
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            width: 190,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/bluesat.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

        // SizedBox(width: getProportionateScreenWidth(20)),
      ],
    ),
  );
}
