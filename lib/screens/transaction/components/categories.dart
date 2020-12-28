import 'package:Smartdrc/screens/pay/pay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Smartdrc/size_config.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF15A4EF),
      // height: MediaQuery.of(context).size.height,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            cardHistorique(1, "Landry Ngoya", "1000 CDF"),
            cardHistorique(2, " Kenny", "2000 USD"),
            cardHistorique(1, "Alena", "5000 CDF"),
            cardHistorique(2, "Wanet", "2000 USD"),
            cardHistorique(1, "Rico Matondo", "2000 CDF"),
            cardHistorique(2, "Rico Matondo", "2000 CDF"),
            cardHistorique(2, "Rico Matondo", "2000 CDF"),
            cardHistorique(2, "Rico Matondo", "2000 CDF"),
            cardHistorique(2, "Rico Matondo", "2000 CDF"),
            SizedBox(height: getProportionateScreenWidth(50)),
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
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03 / 2),
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * 0.1 / 2,
            vertical: MediaQuery.of(context).size.width * 0.1 / 2,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF15A4EF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset(
                  icon,
                  color: Color(0XFFFFFFFF),
                  height: 40,
                  width: 40,
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
                Navigator.pushNamed(context, '/transfertcompte', arguments: {
                  'nameBank': "Smart",
                  'image': 'assets/images/logo.jpeg'
                });
              },
              child: containerCompte(
                  "Smart vers Smart", "assets/images/logo.jpeg"),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/transfertcompte', arguments: {
                  'nameBank': "Equity Bank",
                  'image': 'assets/images/EQ.png'
                });
              },
              child: containerCompte(
                  "Smart vers Equity Bank", "assets/images/EQ.png"),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/transfertcompte', arguments: {
                  'nameBank': "RawBank",
                  'image': "assets/images/raw.png"
                });
              },
              child: containerCompte(
                  "Smart vers RawBank", "assets/images/raw.png"),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/transfertcompte', arguments: {
                  'nameBank': "United Bank of Africa",
                  'image': "assets/images/UB.png"
                });
              },
              child: containerCompte(
                  "Smart vers United Bank of Africa", "assets/images/UB.png"),
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
        padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 16),
        margin: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
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
      // Navigator.pushNamed(context, Wallet.routeName);
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

Widget cardHistorique(int numberCheck, String name, String solde) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[100],
          blurRadius: 4.5,
          spreadRadius: 10,
        )
      ],
    ),
    height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: numberCheck == 1 ? Colors.green : Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                icon: Icon(
                    numberCheck == 1 ? Icons.arrow_back : Icons.arrow_forward,
                    color: Colors.white),
                // icon: Icon(  Icons.arrow_back, color: Colors.green),
                iconSize: 20,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      numberCheck == 1 ? "Reception de:" : "Envoi à:",
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Text(
          solde,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}

Widget historique(imageBank, solde) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Container(
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
