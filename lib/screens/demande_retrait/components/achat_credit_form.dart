import 'package:flutter/material.dart';
import 'package:Smartdrc/components/custom_surfix_icon.dart';
import 'package:Smartdrc/components/default_button.dart';
import 'package:Smartdrc/components/form_error.dart';
import 'package:Smartdrc/screens/association_compte_success/association_compte_success.dart.dart';
import 'package:lottie/lottie.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class AchatCreditForm extends StatefulWidget {
  @override
  _AchatCreditFormState createState() => _AchatCreditFormState();
}

class _AchatCreditFormState extends State<AchatCreditForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String conform_password;
  String phoneNumber;
  bool remember = false;
  String valueChoiceDevise;
  String valueChoiceBanque;
  String idClient;
  List devise = [
    "USD",
    "CDF",
  ];
  List banque = ["Mpesa", "Airtel Money", "Orange Money", "MTN"];
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildDropDownDevise(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildMontantFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Rétrait",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, AssociationCompteSucces.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  buildDropDownDevise() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(5),
        horizontal: getProportionateScreenHeight(16),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.5), width: 1.0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text("Choisir une devise"),
          value: valueChoiceDevise,
          isExpanded: true,
          onChanged: (newValue) {
            setState(() {
              valueChoiceDevise = newValue;
            });
          },
          items: devise.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem),
            );
          }).toList(),
        ),
      ),
    );
  }

  buildDropDownOperator() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(5),
        horizontal: getProportionateScreenHeight(16),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.5), width: 1.0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text("Choisir un Opérateur"),
          value: valueChoiceBanque,
          isExpanded: true,
          onChanged: (newValue) {
            setState(() {
              valueChoiceBanque = newValue;
            });
          },
          items: banque.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem),
            );
          }).toList(),
        ),
      ),
    );
  }

  TextFormField buildCodeDecodeurFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPhoneNumberNullError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kPhoneNumberNullError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: "Code Décodeur",
        hintText: "Entrer votre Code Décodeur",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.app_registration),
      ),
    );
  }

  TextFormField buildMontantFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPhoneNumberNullError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kPhoneNumberNullError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: "Montant",
        hintText: "Entrer un Montant",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.money),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Numéro Téléphone",
        hintText: "Numéro de téléphone",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == conform_password) {
          removeError(error: kMatchPassError);
        }
        conform_password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirmez le mot de passe",
        hintText: "Re-entrer votre mot de passe",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Mot de passe ",
        hintText: "Mot de passe ",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildNomFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      obscureText: false,
      onSaved: (newValue) => password = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kNamelNullError);
      //   }
      //   // } else if (value.length >= 8) {
      //   //   removeError(error: kShortPassError);
      //   // }
      // //   password = value;
      // // },
      // // validator: (value) {
      // //   if (value.isEmpty) {
      // //     addError(error: kPassNullError);
      // //     return "";
      // //   }
      //   // } else if (value.length < 8) {
      //   //   addError(error: kShortPassError);
      //   //   return "";
      //   // }
      //   // return null;
      // },
      decoration: InputDecoration(
        labelText: "Nom Complet ",
        hintText: "Entrez votre Nom Complet",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildPreNomFormField() {
    return TextFormField(
      obscureText: false,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPrenomNullError);
        }
        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPrenomNullError);
          return "";
        }
        // } else if (value.length < 8) {
        //   addError(error: kShortPassError);
        //   return "";
        // }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Prénom",
        hintText: "Entrez votre Prénom",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildIdCompteFormField() {
    return TextFormField(
      obscureText: false,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }

        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "ID-Compte",
        hintText: "Entrez votre ID-compte",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildMotifFormField() {
    return TextFormField(
      obscureText: false,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        }
        // } else if (value.length < 8) {
        //   addError(error: kShortPassError);
        //   return "";
        // }
        return null;
      },
      decoration: InputDecoration(
        // hintMaxLines: 3,
        hintMaxLines: 10,
        labelText: "Motif",
        hintText: " votre motif ",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildPrenomFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Nom Complet",
        hintText: "Entrez votre Nom",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildIdClientFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPhoneNumberNullError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kPhoneNumberNullError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: "ID-CLient",
        hintText: "Entrer votre ID",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.person_outline),
      ),
    );
  }

  TextFormField buildNumeroCarteFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPhoneNumberNullError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kPhoneNumberNullError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: "Numéro de Carte",
        hintText: "Entrer votre Numéro de Carte",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.credit_card_outlined),
      ),
    );
  }

  TextFormField buildCVVFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPhoneNumberNullError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kPhoneNumberNullError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: "Numéro CVV",
        hintText: "Entrer votre Numéro CVV",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.person_outline),
      ),
    );
  }

  TextFormField buildDataExpiFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPhoneNumberNullError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kPhoneNumberNullError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: "Date d'expiration",
        hintText: "Entrer la date ...",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.calendar_today),
      ),
    );
  }
}
