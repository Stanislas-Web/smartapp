import 'package:flutter/material.dart';
import 'package:Smartdrc/screens/transaction/transaction.dart';
import 'package:Smartdrc/screens/serviceclient/service_client.dart';
import 'package:Smartdrc/screens/sign_in/sign_in_screen.dart';
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
      padding: EdgeInsets.all(
        getProportionateScreenWidth(15),
      ),
      child: Column(
        children: [
          profilAction(context),
          transactionAction(context),
          contactAction(context),
          deconnexionAction(context)
        ],
      ),
    );
  }
}

settingContainer(name) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(20),
        ),
      ),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(
          getProportionateScreenWidth(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(16),
              ),
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    ),
  );
}

profilAction(context) {
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
            child: profil(context),
          );
        },
      );
    },
    child: settingContainer("Mon Profil"),
  );
}

transactionAction(context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, Transaction.routeName);
    },
    child: settingContainer("Transaction"),
  );
}

contactAction(context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, ServiceClient.routeName);
    },
    child: settingContainer("Contact"),
  );
}

deconnexionAction(context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, SignInScreen.routeName);
    },
    child: settingContainer("Déconnexion"),
  );
}

profil(BuildContext context) {
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
            Text("Mon Profil"),
            SizedBox(
              height: getProportionateScreenWidth(16),
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Text(
              "Rico Matondo",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(16),
            ),
            GestureDetector(
              onTap: () {
                Toast.show("edition de mon compte bientôt disponible", context,
                    duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                // Navigator.pushNamed(context, '/associationcompte', arguments: {
                //   'numberCheck': "Equity Bank",
                //   'image': 'assets/images/EQ.png'
                // });
              },
              child: containerProfil("Mon Compte", 1),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
              child: containerProfil("Se déconnecter", 2),
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
      Positioned(
        top: 0,
        right: 0,
        left: 0,
        child: Center(
          child: Container(
            width: getProportionateScreenWidth(100),
            height: getProportionateScreenWidth(100),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/rico.png'),
                  fit: BoxFit.fill),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget containerProfil(name, numberCheck) {
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
            Icon(
              numberCheck == 1 ? Icons.person_outline_outlined : Icons.logout,
              size: getProportionateScreenWidth(30),
            ),
            SizedBox(
              width: getProportionateScreenWidth(16),
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.bold,
                color: Colors.black,
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
