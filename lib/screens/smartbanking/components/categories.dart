import 'package:Smartdrc/screens/pay/pay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Smartdrc/screens/transaction/transaction.dart';
import 'package:Smartdrc/screens/demande_retrait/demanderetrait.dart';
import '../../../size_config.dart';
import 'package:toast/toast.dart';

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
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultHeight() * 0.9 / 27),
            Wrap(
              children: [
                associerCompte(
                    context, 'assets/icons/ami.svg', 'Associer un compte'),
                transfert(
                    context, 'assets/icons/money-transfer.svg', 'Transfert'),
                transaction(context, 'assets/icons/moi.svg', 'Transaction'),
                pay(context, 'assets/icons/payment.svg', 'Smart Pay'),
                demanderetrait(context, 'assets/icons/envoie-recevoir.svg',
                    'Démander un retrait'),
                factureSection(
                    context, 'assets/icons/facture.svg', 'Payer Facture'),
              ],
            ),
            SizedBox(height: defaultHeight() * 0.9 / 27),
            balanceCompte("assets/images/EQ.png", "1500 USD"),
            balanceCompte("assets/images/raw.png", "1000 USD"),
            balanceCompte("assets/images/UB.png", "xxx"),
            // balanceCompte("Equity Bank", "2000"),
            // balanceCompte("Rawbank", "xxx"),
            // sectionTitle('Achat Crédit'),
            // achatSection(),
            // sectionTitle('Réabonnement Tv'),
            // reabonnementSection(),
          ],
        ),
      ),
    );
  }
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
        Padding(
          padding: EdgeInsets.only(
            // horizontal: MediaQuery.of(context).size.height * 0.1 / 2,
            top: getProportionateScreenWidth(30),
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

choix(BuildContext context) {
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.only(
          top: getProportionateScreenWidth(30),
          left: getProportionateScreenWidth(16),
          right: getProportionateScreenWidth(16),
          bottom: getProportionateScreenWidth(16),
        ),
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
              height: getProportionateScreenWidth(16),
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
                  'nameBank': "United Bank for Africa",
                  'image': "assets/images/UB.png"
                });
              },
              child: containerCompte(
                  "United Bank for Africa", "assets/images/UB.png"),
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
              width: getProportionateScreenWidth(50),
              height: getProportionateScreenWidth(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imageBank),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(16),
            ),
            Text(
              nameBank,
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

Widget demanderetrait(context, icon, title) {
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
      Toast.show("Le Service paiement facture bientôt disponible", context,
          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
      // Navigator.pushNamed(context, Wallet.routeName);
    },
    child: cardCategory(context, icon, title),
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
