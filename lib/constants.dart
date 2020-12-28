import 'package:flutter/material.dart';
import 'package:Smartdrc/size_config.dart';

const kBackgoundColor = Color(0xFF091C40);
const kSecondaryColor = Color(0xFF606060);
const kRedColor = Color(0xFFFF1E46);
const kPrimaryColor = Color(0xFF15A4EF);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
// const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Veuillez entrer votre Adresse Email";
const String kInvalidEmailError = "Veuillez entrer un Email valide";
const String kPassNullError = "Veuillez entrer votre Code Pin";
const String kShortPassError = "Le Code Pin doit contenir 4 chiffres";
const String kMatchPassError = "Les codes pin ne correspondent pas";
const String kNamelNullError = "S'il vous plaît entrez votre nom";
const String kPrenomNullError = "S'il vous plaît entrez votre prénom";
const String kPhoneNumberNullError =
    "Veuillez entrer votre numéro de téléphone";
const String kAddressNullError = "S'il vous plaît entrez votre adresse";
const String kObjetNullError = "S'il vous plaît entrez l'objet du message";
const String kMessageNullError = "S'il vous plaît entrez votre message";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
